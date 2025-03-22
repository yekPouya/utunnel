#!/bin/bash

# Telegram bot configuration
TELEGRAM_BOT_TOKEN="bot-token"
TELEGRAM_CHAT_ID="chat id"

# Log directory
LOG_DIR="/opt/utunnel/logs"

# Create the log directory if it doesn't exist
sudo mkdir -p "$LOG_DIR"

# Temporary file to store previously sent errors
SENT_ERRORS_FILE="/tmp/utunnel_error_logs.txt"
touch "$SENT_ERRORS_FILE"

# Get the server's IP address
SERVER_IP=$(hostname -I | awk '{print $1}')

# Function to send messages to Telegram
send_to_telegram() {
    local message="$1"
    curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage" \
        -d "chat_id=$TELEGRAM_CHAT_ID" \
        -d "text=$message" \
        -d "parse_mode=Markdown"
}

# Main loop to check for new errors every 20 seconds
while true; do
    # Identify utunnel services
    SERVICES=$(systemctl list-units --type=service --all | grep utunnel | awk '{print $1}')

    # Check if any services were found
    if [ -z "$SERVICES" ]; then
        echo "No utunnel services found."
        sleep 20
        continue
    fi

    # Define the error pattern to match
    ERROR_PATTERN="\[ERROR\]"

    # Collect and send new error logs for each service
    for SERVICE in $SERVICES; do
        LOG_FILE="$LOG_DIR/${SERVICE}_error_logs.log"
        ARCHIVE_LOG_FILE="$LOG_DIR/${SERVICE}_error_logs_24h.log"
        
        # Save all logs from the last 24 hours to the archive file
        sudo journalctl -u "$SERVICE" --since "24 hours ago" > "$ARCHIVE_LOG_FILE"
        
        echo "Checking logs for service: $SERVICE (filter: '$ERROR_PATTERN')"
        
        # Use journalctl to filter logs and save only those containing the [ERROR] flag
        sudo journalctl -u "$SERVICE" --since "1 minute ago" | grep -i "$ERROR_PATTERN" > "$LOG_FILE"
        
        # Check if the log file is empty (no matching errors found)
        if [ ! -s "$LOG_FILE" ]; then
            echo "No [ERROR] logs found for service: $SERVICE"
            rm -f "$LOG_FILE"  # Remove the empty log file
        else
            # Compare with previously sent errors and send only new ones
            while read -r ERROR_LINE; do
                if ! grep -Fxq "$ERROR_LINE" "$SENT_ERRORS_FILE"; then
                    # Extract timestamp from the log line
                    TIMESTAMP=$(echo "$ERROR_LINE" | awk '{print $1, $2, $3}')
                    
                    # Extract error message (remove the prefix)
                    ERROR_MESSAGE=$(echo "$ERROR_LINE" | cut -d ']' -f 2- | sed 's/^ *//')
                    
                    # Format the message for Telegram
                    MESSAGE="⚠️*New Error Detected* ⚠️%0A"
                    MESSAGE+="*Service:* \`$SERVICE\`%0A"
                    MESSAGE+="*Server IP:* \`$SERVER_IP\`%0A"
                    MESSAGE+="*Timestamp:* \`$TIMESTAMP\`%0A"
                    MESSAGE+="*Error Details:*%0A"
                    MESSAGE+="\`\`\`$ERROR_MESSAGE%0A\`\`\`"

                    # Send the new error to Telegram
                    send_to_telegram "$MESSAGE"
                    echo "Sent new error for service: $SERVICE to Telegram."
                    
                    # Append the new error to the sent errors file
                    echo "$ERROR_LINE" >> "$SENT_ERRORS_FILE"
                fi
            done < "$LOG_FILE"
        fi
    done

    # Wait for 20 seconds before checking again
    sleep 20
done
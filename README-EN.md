🚀 UTunnel Manager -  
Professional Secure and High-Speed Tunneling Solution  

<div align="center"> <img src="https://img.shields.io/badge/Go-1.21+-blue?style=for-the-badge" alt="Go Version"> <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License"> <img src="https://img.shields.io/badge/Supports-ARM64%20%26%20x86-brightgreen?style=for-the-badge" alt="Architecture Support"> <img src="https://img.shields.io/badge/Version-2.0.0-red?style=for-the-badge" alt="Version"> </div>  

🌐 Comprehensive Introduction  

A professional solution for creating secure and high-speed tunnels between servers, utilizing the latest networking technologies to enable traffic transfer with minimal latency. This system is specifically designed for latency-sensitive environments requiring high security.  

### 🔬 Key Technical Specifications  

- **Latency**: <10ms in optimized networks  
-  
- **Bandwidth**: Supports Jumbo Frames (9000 bytes)  
-  
- **Security**: TLS 1.3 with AES-256-GCM encryption  
-  
- **Optimization**: 40% reduction in CPU usage with proprietary algorithms  

## 🌟 Complete Protocols and Their Applications  

| Protocol     | 📌 Key Features                        | 🏆 Best Use Cases      | 🔧 Optimal Parameters |  
|--------------|------------------------------------------|-----------------------------|-------------------|  
| **🛰️ TCP**      | 🔗 Stable and reliable connection<br>📦 Guaranteed packet delivery<br>⚖️ Automatic flow control | 🖥️ File transfers<br>📧 Email protocols<br>🌐 Web browsers | `window_size=256k`<br>`keepalive=60s` |  
| **🌀 UDP**      | ⚡ High speed<br>🔄 Connectionless communication<br>📡 Suitable for real-time data | 🎮 Online gaming<br>📞 VoIP<br>📹 Video streaming | `buffer=2MB`<br>`timeout=3s` |  
| **🌐 WS**       | 🔄 Bidirectional communication<br>🌍 HTTP-based<br>🚀 Ideal for WebSockets | 💬 Real-time chats<br>📊 Live updates<br>🎮 Browser games | `ping_interval=25s`<br>`max_size=1MB` |  
| **🌉 TCPMux**   | 🔗 Connection multiplexing<br>⚡ Reduced overhead<br>📦 Optimized for bulk data | 🖥️ Large data transfers<br>🏢 Enterprise communications | `mux_con=8`<br>`timeout=30s` |  
| **🕸️ WSMux**    | 🌐 WebSocket + Muxing<br>🛡️ Firewall bypass<br>🗜️ Compression | 💻 Advanced web apps<br>📱 Mobile communications | `compression=zlib`<br>`ping_interval=25s` |  
| **🔐 WSS**      | 🔒 WS + SSL/TLS<br>🛡️ End-to-end encryption<br>📈 High security | 🏦 Financial transactions<br>🔐 Secure logins<br>🏥 Medical data | `tls_version=1.3`<br>`cert_check=strict` |  
| **🔐 WSSMux**   | 🔒 WSMux + SSL/TLS<br>🛡️ End-to-end security<br>📈 Optimized for transactions | 🏦 Financial systems<br>🏥 Medical communications | `tls_version=1.3`<br>`cert_check=strict` |  
| **🚄 UTCPmux**  | ⚡ High-speed optimization<br>📡 Jumbo Frames<br>🌐 40% CPU reduction | 🖥️ Data centers<br>☁️ Cloud services | `frame_size=9000`<br>`concurrency=16` |  
| **🛡️ UWSmux**   | 🗜️ Smart compression<br>⏱️ 30% latency reduction<br>🔄 Auto-recovery | 💼 Enterprise communications<br>🌍 International services | `compress_level=6`<br>`recovery_time=5s` |  

## 📊 Protocol Comparison

<div align="center">

| Criteria     | TCP  | UDP  | WS   | WSS  | WSMux | WSSMux | UTCPmux | UWSmux |
|--------------|------|------|------|------|-------|--------|---------|--------|
| **Speed**    | 🟢   | 🔵   | 🟢   | 🟡   | 🟢    | 🟡     | 🔵      | 🟢     |
| **Security** | 🟡   | 🔴   | 🟡   | 🟢   | 🟡    | 🟢     | 🟢      | 🟢     |
| **Stability**| 🟢   | 🔴   | 🟢   | 🟢   | 🟢    | 🟢     | 🔵      | 🟢     |
| **Latency**  | 🟡   | 🟢   | 🟡   | 🟡   | 🟡    | 🟡     | 🟢      | 🟢     |

</div>

### Legend:
- 🟢 Excellent
- 🔵 Very Good 
- 🟡 Moderate
- 🔴 Basic

### ✨ Protocol Selection Guide:  
1. **Reliability**: 🛰️ TCP / 🌉 TCPMux  
2. **Speed**: 🌀 UDP  
3. **Simple Web**: 🌐 WS  
4. **Secure Web**: 🔐 WSS  
5. **Advanced Web**: 🕸️ WSMux / 🔐 WSSMux  
6. **Optimization**: 🚄 UTCPmux (Speed) / 🛡️ UWSmux (Security)  

### ⚠️ Technical Notes:  
- Always use 🔐 secure versions for the web  
- Adjust `buffer` settings according to bandwidth  
- Use 🕸️ WSMux for modern web applications  
- **Mux** versions are ideal for reducing latency and resource consumption  

<div align="center"> <img src="https://github.com/user-attachments/assets/5a5792c8-b101-45fc-8843-6dd419fc8f33" alt="System Architecture" width="800"> <p><em>Overview of the advanced system architecture</em></p> </div>  

⚙️ Optimal Settings  

✅ Best Practices  

For web communications: Use UWSmux with default settings  

For bulk data transfer: UTCPmux with `mux_version=2`  

Security settings: Enable TLS and use valid certificates  

⚠️ Important Technical Notes  

Always use the latest protocol version  

When changing versions, reset all related parameters  

Use appropriate `channel_size` for your traffic load  

✅ Always use `mux_version=2`:  

30-50% reduction in `mux_con` requirements  

20-40% overall performance improvement  

Lower resource consumption  

⚠️ Important Note: When changing versions, always reconfigure `channel_size` and `connection_pool`!  

🖼️ Image Gallery  

<div align="center"> <table> <tr> <td><img src="https://github.com/user-attachments/assets/09f19faa-d157-40d6-a7d1-0e4d31607297" width="400" alt="نمونه 1"></td> <td><img src="https://github.com/user-attachments/assets/9ae26d5a-b008-4543-8156-1f8afbcad86f" width="400" alt="نمونه 2"></td> <td><img src="https://github.com/user-attachments/assets/395ff89e-bef0-4cbc-bec5-70e501171761" width="400" alt="نمونه 4"></td> </tr> </table> </div>  

📝 Comprehensive Operational Modes Guide  

🔵 Server Mode (Run on Iran Server)  

Service Name: Any name with English letters and numbers (unique per server)  

Token: Must match the foreign server value  

Tunnel Port: Must match the foreign server value  

`mux_con`: Number of multiplexed connections (default: 8)  

🟢 Client Mode (Run on Foreign Server)  

Requires Iran server IP and tunnel port (matching server settings)  

🟡 Other Modes:  

Status: Display tunnel status  

Restart: Restart one or all tunnels  

Stop: Stop one or all tunnel services  

Delete: Remove one or all tunnels  

Timer: Set auto-restart (1 to 23 hours)  

🔧 Port Configuration Examples  
```  
443-600                  # Listen on ports 443-600 and forward to the same ports on destination  
443-600:5201             # Listen on 443-600 and forward to port 5201  
443-600=1.1.1.1:5201     # Listen on 443-600 and forward to port 5201 on IP 1.1.1.1  
443                      # Listen on port 443 and forward to port 443 on destination  
4000=5000                # Listen on 4000 and forward to 5000  
127.0.0.2:443=5201       # Listen on 443 on IP 127.0.0.2 and forward to 5201  
443=1.1.1.1:5201         # Listen on 443 and forward to 5201 on 1.1.1.1  
127.0.0.2:443=1.1.1.1:5201  # Listen on 443 on 127.0.0.2 and forward to 5201 on 1.1.1.1  
```  

💻 Installation and Execution Guide  

For x86/x64 (AMD64) processors:  
```  
wget https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/utunnel_manager_amd64  
chmod +x utunnel_manager_amd64  
./utunnel_manager_amd64  
```  
For ARM64 processors:  
```  
wget https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/utunnel_manager_arm64  
chmod +x utunnel_manager_arm64  
./utunnel_manager_arm64  
```  
For x86 (32-bit) processors:  
```  
wget https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/utunnel_manager_386  
chmod +x utunnel_manager_386  
./utunnel_manager_386  
```  

🤖 Telegram Monitoring Bot Installation  
```  
bash <(curl -s https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/MonitorBotinstall.sh --ipv4)  
```  
After execution:  

Select the installation option  

Enter your bot token and chat ID  

Set tunnel check interval in seconds  

## 💰 Financial Support  

We appreciate your support for continuous project development and improvement:  

<div align="center">  

| Network      | Currency     | Wallet Address                              | Icon       |  
|--------------|--------------|------------------------------------------|------------|  
| **Tron**     | TRX (TRC20)  | `TMXRpCsbz8PKzqN4koXiErawdLXzeinWbQ`     | <img src="https://cryptologos.cc/logos/tron-trx-logo.png" width="20"> |  
| **Ethereum** | USDT (ERC20) | `0xD4cEBA0cFf6769Fb9EFE4606bE59C363Ff85BF76` | <img src="https://cryptologos.cc/logos/tether-usdt-logo.png" width="20"> |  

</div>  

<div align="center" style="margin-top: 20px;">  
  <p>🙏 Thank you for your valuable trust and support</p>  
  <p>Any amount of financial contribution will motivate further project development</p>  
</div>  

🖼️ Additional Images  

<div align="center"> <table> <tr> <td><img src="https://github.com/user-attachments/assets/29063460-b7f5-4e59-88df-bbe4bb84c836" width="300"></td> <td><img src="https://github.com/user-attachments/assets/c2f33b82-46ad-46c8-b514-2d017532e5f4" width="300"></td> </tr> <tr> <td><img src="https://github.com/user-attachments/assets/e7fbaa6e-2d6a-48c8-9696-0cc8ab528a14" width="300"></td> <td><img src="https://github.com/user-attachments/assets/59322989-d5ae-472f-a491-34104ec85b74" width="300"></td> </tr> </table> </div>

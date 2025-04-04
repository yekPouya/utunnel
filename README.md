<div align="center"> <h1>✨ پروژه UTunnel Manager ✨</h1> <p align="center"> <img src="https://img.shields.io/badge/Go-1.21+-blue?style=for-the-badge" alt="نسخه Go"> <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="مجوز"> <img src="https://img.shields.io/badge/Supports-ARM64%20%26%20x86-brightgreen?style=for-the-badge" alt="پشتیبانی معماری"> </p> </div>
🚀 معرفی
اسکریپتی پیشرفته برای تانلینگ معکوس بین دو سرور با کمترین تاخیر که ترافیک TCP/UDP را منتقل می‌کند. از ویژگی‌های کلیدی این پروژه می‌توان به پشتیبانی از پروتکل‌های متنوع شامل TCP, UDP, TCPMux, WS, WSS (با SSL)، WSMux, WSSMux, UTCPmux و UWSmux اشاره کرد. سیستم به صورت خودکار گواهی SSL سلف‌ساین تولید می‌کند.

🌟 پروتکل‌های اختصاصی
UTCPmux:

نسخه بهینه‌شده TCPMux با 40% مصرف CPU کمتر

پشتیبانی از Jumbo Frames برای شبکه‌های پرسرعت

UWSmux:

نسخه پیشرفته WSMux با قابلیت فشرده‌سازی

کاهش 30% تاخیر ارتباطات

مکانیزم بازیابی خودکار هنگام قطعی

<div align="center"> <img src="https://github.com/user-attachments/assets/5a5792c8-b101-45fc-8843-6dd419fc8f33" alt="نمونه اولیه" width="600"> </div>
📌 راهکارهای بهینه
✅ UWSmux: بهترین انتخاب برای ارتباطات امن وب‌محور با تأخیر کم
✅ UTCPmux: راهکار ایده‌آل برای انتقال‌های پرحجم در شبکه‌های پرسرعت
✅ همیشه از mux_version=2 استفاده کنید (کاهش 30-50% نیاز به mux_con، بهبود 20-40% عملکرد)
⚠️ تذکر: هنگام تغییر نسخه، پارامترهای channel_size و connection_pool را مجدداً تنظیم کنید!

🖼️ نمایش تصویری
<div align="center"> <table> <tr> <td><img src="https://github.com/user-attachments/assets/09f19faa-d157-40d6-a7d1-0e4d31607297" width="300"></td> <td><img src="https://github.com/user-attachments/assets/9ae26d5a-b008-4543-8156-1f8afbcad86f" width="300"></td> </tr> </table> </div>
🛠️ نصب و اجرا
برای CPUهای x86/x64:
bash
Copy
wget https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/utunnel_manager_amd64
chmod +x utunnel_manager_amd64
./utunnel_manager_amd64
برای CPUهای ARM64:
bash
Copy
wget https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/utunnel_manager_arm64
chmod +x utunnel_manager_arm64
./utunnel_manager_arm64
🤖 ربات مونیتورینگ تلگرام
bash
Copy
bash <(curl -s https://raw.githubusercontent.com/aliamg1356/utunnel/refs/heads/main/MonitorBotinstall.sh --ipv4)
🔄 حالت‌های عملیاتی
حالت سرور: اجرا روی سرور ایران (نیاز به تنظیم نام سرویس، توکن و پورت تانل)

حالت کلاینت: اجرا روی سرور خارج (نیاز به آیپی سرور ایران و پورت تانل)

وضعیت: نمایش وضعیت تانل‌ها

ریستارت: راه‌اندازی مجدد تانل‌ها

تایمر: تنظیم ریستارت خودکار (1 تا 23 ساعت)

🔌 نمونه تنظیمات پورت
Copy
443-600                  # فوروارد به محدوده پورت‌های مشابه
443-600:5201             # فوروارد به پورت 5201
443=1.1.1.1:5201         # فوروارد به IP مشخص
127.0.0.2:443=5201       # فوروارد از IP خاص
💰 حمایت مالی
TRON: TMXRpCsbz8PKzqN4koXiErawdLXzeinWbQ
USDT (ERC20): 0xD4cEBA0cFf6769Fb9EFE4606bE59C363Ff85BF76

<div align="center"> <p>🙏 از حمایت شما سپاسگزاریم!</p> </div> ```

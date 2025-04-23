<h1 align="center" style="font-size: 2.5em; margin-bottom: 15px; color: #2c3e50;">🚀 UTunnel Manager - Professional Secure Tunneling Solution</h1>

<h3 align="center" style="font-size: 1.4em; background: linear-gradient(90deg, #ff4d4d, #f9cb28); -webkit-background-clip: text; -webkit-text-fill-color: transparent; margin-bottom: 25px; padding: 10px; border-radius: 5px; border-left: 4px solid #e74c3c; border-right: 4px solid #e74c3c;">
🔥 Exceptional performance even on heavily restricted foreign servers 🔥
</h3>

<div align="center" style="margin-bottom: 30px;">
  <img src="https://img.shields.io/badge/Go-1.21+-blue?style=for-the-badge&logo=go" alt="Go Version">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge&logo=opensourceinitiative" alt="License">
  <img src="https://img.shields.io/badge/Foreign_Servers-Supported-orange?style=for-the-badge&logo=serverless" alt="Foreign Servers Support">
  
  <!-- Supported Architecture Badges -->
  <div style="margin-top: 15px;">
    <img src="https://img.shields.io/badge/x86_64-Supported-success?style=flat-square&logo=amd" alt="x86_64">
    <img src="https://img.shields.io/badge/ARM64-Supported-success?style=flat-square&logo=arm" alt="ARM64">
    <img src="https://img.shields.io/badge/RISC_V-Experimental-yellow?style=flat-square&logo=riscv" alt="RISC-V">
  </div>
</div>

[![English Version](https://img.shields.io/badge/README_English-FFA500?style=for-the-badge&logo=bookstack&logoColor=white)](./README-EN.md)

No need to register foreign server IPs - Only register your Iran server IP and foreign servers can connect to it.

If Iran server IP changes, make sure to update it in the bot and recreate tunnels, otherwise connections will drop.

🌐 Comprehensive Introduction

A professional solution for creating secure, high-speed reverse tunnels between servers, utilizing cutting-edge networking technologies to enable traffic transfer with minimal latency. Specifically designed for latency-sensitive and high-security environments.

### 🔬 Key Technical Specifications

- **Latency**: <10ms in optimized networks
- 
- **Bandwidth**: Jumbo Frames support (9000 bytes)
- 
- **Security**: TLS 1.3 with AES-256-GCM encryption
- 
- **Optimization**: 40% CPU reduction with proprietary algorithms

## 🌟 Complete Protocols and Their Applications

| Protocol      | 📌 Key Features                        | 🏆 Best Use Cases      | 🔧 Optimal Parameters |
|--------------|------------------------------------------|-----------------------------|-------------------|
| **🛰️ TCP**      | 🔗 Stable & reliable connection<br>📦 Packet delivery guarantee<br>⚖️ Automatic flow control | 🖥️ File transfer<br>📧 Email protocols<br>🌐 Web browsers | `window_size=256k`<br>`keepalive=60s` |
| **🌀 UDP**      | ⚡ High speed<br>🔄 Connectionless<br>📡 Ideal for real-time data | 🎮 Online gaming<br>📞 VoIP<br>📹 Video streaming | `buffer=2MB`<br>`timeout=3s` |
| **🌐 WS**       | 🔄 Bidirectional communication<br>🌍 HTTP-based<br>🚀 Ideal for WebSockets | 💬 Real-time chat<br>📊 Live updates<br>🎮 Browser games | `ping_interval=25s`<br>`max_size=1MB` |
| **🌉 TCPMux**   | 🔗 Connection multiplexing<br>⚡ Reduced overhead<br>📦 Optimized for bulk data | 🖥️ Large data transfer<br>🏢 Enterprise communications | `mux_con=8`<br>`timeout=30s` |
| **🕸️ WSMux**    | 🌐 WebSocket + Muxing<br>🛡️ Firewall bypass<br>🗜️ Compression | 💻 Advanced web apps<br>📱 Mobile communications | `compression=zlib`<br>`ping_interval=25s` |
| **🔐 WSS**      | 🔒 WS + SSL/TLS<br>🛡️ End-to-end encryption<br>📈 High security | 🏦 Financial transactions<br>🔐 Secure logins<br>🏥 Medical data | `tls_version=1.3`<br>`cert_check=strict` |
| **🔐 WSSMux**   | 🔒 WSMux + SSL/TLS<br>🛡️ End-to-end security<br>📈 Transaction optimized | 🏦 Financial systems<br> 🏥 Medical communications | `tls_version=1.3`<br>`cert_check=strict` |
| **🚄 UTCPmux**  | ⚡ High-speed optimized<br>📡 Jumbo Frames<br>🌐 40% CPU reduction | 🖥️ Data centers<br>☁️ Cloud services | `frame_size=9000`<br>`concurrency=16` |
| **🛡️ UWSmux**   | 🗜️ Smart compression<br>⏱️ 30% latency reduction<br>🔄 Auto-recovery | 💼 Enterprise communications<br>🌍 International services | `compress_level=6`<br>`recovery_time=5s` |

## 📊 Protocol Selection Matrix - Comprehensive Guide

This table helps you choose the best protocol based on your needs:

<div align="center">

| Criterion     | Technical Description                  | TCP  | TCPMux | UDP  | WS   | WSS  | WSMux | WSSMux | UTCPmux | UWSmux |
|--------------|----------------------------------|------|--------|------|------|------|-------|--------|---------|--------|
| **Speed**     | Data transfer per second       | 🟢   | 🔵     | 🔵   | 🟢   | 🟡   | 🟢    | 🟡     | 🔵      | 🟢     |
| **Security**    | Encryption & protection level            | 🟡   | 🟡     | 🔴   | 🟡   | 🟢   | 🟡    | 🟢     | 🟢      | 🟢     |
| **Stability**  | Connection drop resistance     | 🟢   | 🟢     | 🔴   | 🟢   | 🟢   | 🟢    | 🟢     | 🔵      | 🟢     |
| **Latency**    | Response time (ms)      | 🟡   | 🟡     | 🟢   | 🟡   | 🟡   | 🟡    | 🟡     | 🟢      | 🟢     |
| **Optimization**| System resource usage               | 🟡   | 🟢     | 🟢   | 🟡   | 🟡   | 🟢    | 🟢     | 🟢      | 🟢     |

</div>

### 🧩 Selection Guide:
- **For online games**: UDP (low latency)
- **For banking**: WSSMux (high security)
- **For large file transfer**: TCPMux (resource optimized)
- **For video streaming**: UTCPmux (high bandwidth)
- **For enterprise chat**: UWSmux (balanced speed/security)


### Legend:
- 🟢 Excellent
- 🔵 Very Good
- 🟡 Average
- 🔴 Basic

### ✨ Protocol Selection Guide:
1. **Reliability**: 🛰️ TCP / 🌉 TCPMux
2. **Speed**: 🌀 UDP 
3. **Basic Web**: 🌐 WS
4. **Secure Web**: 🔐 WSS
5. **Advanced Web**: 🕸️ WSMux / 🔐 WSSMux
6. **Optimization**: 🚄 UTCPmux (speed) / 🛡️ UWSmux (security)

### ⚠️ Technical Notes:
- Always use secure versions for web
- Adjust `buffer` settings according to bandwidth
- Use WSMux for modern web applications
- **Mux** versions are ideal for reducing latency and resource usage

<div align="center"> <img src="https://github.com/user-attachments/assets/5a5792c8-b101-45fc-8843-6dd419fc8f33" alt="System Architecture" width="800"> <p><em>Advanced system architecture overview</em></p> </div>


⚙️ Optimal Settings

✅ Best Practices

For web communications: Use UWSmux with default settings

For bulk data transfer: UTCPmux with mux_version=2

Security settings: Enable TLS and use valid certificates

⚠️ Important Technical Notes

Always use the latest protocol version

When changing versions, reset all related parameters

Use appropriate channel_size for your traffic load

✅ Always use mux_version=2:

30-50% reduction in mux_con requirements

20-40% overall performance improvement

Lower resource consumption

⚠️ Important Note: When changing versions, always reconfigure channel_size and connection_pool!

**Additional Explanations**

# **MUX Parameters Explanation in UTunnel**  

## **📌 Introduction**  
UTunnel uses **MUX (Multiplexing)** to transfer multiple data streams over a single connection, reducing overhead and improving tunnel efficiency.  
These config file parameters can be adjusted for precise MUX operation. Below we explain each parameter and the impact of increasing/decreasing its value.  

---

## **🔹 MUX Parameters and Their Effects**  

### **1. `mux_framesize = 32768`**  
📌 **Description**:  
Determines **each data frame size** in MUX protocol. Default: **32KB (32768 bytes)**.  

✅ **Increasing value (e.g. `65536`)**:
- **Improves large data transfer** (e.g. big files)  
- **Reduces overhead** (data split into fewer frames)  
- **Ideal for high-speed networks**  

❌ **Decreasing value (e.g. `16384`)**:
- **Better for light traffic** (e.g. chat/quick commands)  
- **Increases overhead** (more frames for large data)  
- **May reduce efficiency for large file transfers**  

---

### **2. `mux_recievebuffer = 4194304`**  
📌 **Description**:  
Sets **total receive buffer size** for all MUX streams. Default: **4MB (4194304 bytes)**.  

✅ **Increasing value (e.g. `8388608`)**:
- **Improves performance on high-latency networks** (e.g. satellite)  
- **Prevents data loss in heavy traffic**  
- **Ideal for high-traffic servers**  

❌ **Decreasing value (e.g. `2097152`)**:
- **Reduces memory usage** (good for low-power devices)  
- **May cause data loss in heavy traffic**  

---

### **3. `mux_streambuffer = 65536`**  
📌 **Description**:  
Sets **buffer size for each individual stream** in MUX. Default: **64KB (65536 bytes)**.  

✅ **Increasing value (e.g. `131072`)**:
- **Improves data transfer for heavy streams** (e.g. video)  
- **Reduces latency in large data processing**  

❌ **Decreasing value (e.g. `32768`)**:
- **Saves memory** (good for low-power devices)  
- **May reduce efficiency for large data transfers**  

---

## **🎯 Recommended Settings by Use Case**  

| **Usage Type**               | **Recommended Settings**                          | **Explanation**                                  |
|-------------------------------|---------------------------------------------|---------------------------------------------|
| **Light traffic (chat, commands)**  | `mux_framesize=16384`, `mux_streambuffer=32768` | Reduces overhead for quick communications.              |
| **Heavy traffic (files, video)**| `mux_framesize=65536`, `mux_recievebuffer=8388608` | Improves large data transfers.                |
| **High-latency networks**    | `mux_recievebuffer=8388608`                 | Prevents data loss in weak networks. |
| **Low-power devices (RPi)**  | `mux_streambuffer=32768`, `mux_recievebuffer=2097152` | Reduces memory consumption.                           |

---

For managing **50 to 500 concurrent users** in UTunnel, optimize settings based on **scalability, resource usage and stability**. Below table shows recommended values for different user levels:

---

### **📊 UTunnel Optimal Settings for Different Concurrent Users**

| Parameter               | 50 users          | 100 users         | 200 users         | 300 users         | 400 users         | 500 users         | Description                     |
|-----------------------|-------------------|-------------------|-------------------|-------------------|-------------------|-------------------|-----------------------------|
| **`transport`**       | `wssmux`          | `wssmux`          | `wssmux`          | `wssmux`          | `wssmux`          | `wssmux`          | Secure & stable protocol         |
| **`mux_con`**         | `8`               | `16`              | `24`              | `32`              | `40`              | `48`              | Concurrent connections         |
| **`mux_framesize`**   | `16384` (16 KiB)  | `32768` (32 KiB)  | `32768` (32 KiB)  | `65536` (64 KiB)  | `65536` (64 KiB)  | `65536` (64 KiB)  | Data frame size          |
| **`mux_recievebuffer`**| `4194304` (4 MiB)| `8388608` (8 MiB) | `16777216` (16 MiB)| `25165824` (24 MiB)| `33554432` (32 MiB)| `50331648` (48 MiB)| Total receive buffer              |
| **`mux_streambuffer`**| `32768` (32 KiB)  | `65536` (64 KiB)  | `65536` (64 KiB)  | `131072` (128 KiB)| `131072` (128 KiB)| `262144` (256 KiB)| Per-stream buffer                |
| **`connection_pool`** | `8`               | `12`              | `16`              | `20`              | `24`              | `32`              | Reserved connections       |
| **`heartbeat`**       | `40` seconds        | `30` seconds        | `25` seconds        | `20` seconds        | `15` seconds        | `10` seconds        | Connection check interval           |
| **`channel_size`**    | `2048`            | `4096`            | `8192`            | `12288`           | `16384`           | `24576`           | Communication channel capacity         |
| **`log_level`**       | `info`            | `warn`            | `warn`            | `error`           | `error`           | `error`           | Log detail level            |

---

🎯 Conclusion

50-200 users: Normal settings with slight buffer increases

200-500 users: Significant mux_recievebuffer/mux_streambuffer increase + reduced heartbeat

500+ users: Requires clustering or more powerful servers

These values balance resources and performance. Specific environments may need finer tuning.
🖼️ Additional Images  

<div align="center"> <table> <tr> <td><img src="https://github.com/user-attachments/assets/29063460-b7f5-4e59-88df-bbe4bb84c836" width="300"></td> <td><img src="https://github.com/user-attachments/assets/c2f33b82-46ad-46c8-b514-2d017532e5f4" width="300"></td> </tr> <tr> <td><img src="https://github.com/user-attachments/assets/e7fbaa6e-2d6a-48c8-9696-0cc8ab528a14" width="300"></td> <td><img src="https://github.com/user-attachments/assets/59322989-d5ae-472f-a491-34104ec85b74" width="300"></td> </tr> </table> </div>

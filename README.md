# Jincan Network Diagnostic Tool (Jincan-Check)

A lightweight network connectivity checker script designed for **Padavan**, **OpenWrt**, and generic Linux systems. 

This tool is developed by **[Jincan Network](https://www.jincan.net)** (深圳市金灿网络有限公司).

## Features

- **Lightweight:** No dependencies required. Uses standard `/bin/sh`.
- **Cross-Platform:** Works on Routers (Padavan, OpenWrt), Servers (Ubuntu, CentOS), and macOS.
- **Diagnostic:** Quickly checks connectivity to Global Internet and Jincan Network services.

## Installation & Usage

You can download the script and run it directly on your router or server.

### Method 1: Quick Run (If you upload it to your server)
```bash
wget -O jincan_check.sh [https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/Jincan-Config-Tool/main/jincan_check.sh](https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/Jincan-Config-Tool/main/jincan_check.sh) && chmod +x jincan_check.sh && ./jincan_check.sh

#!/bin/bash

# === Menjalankan Semua Script Bypass dan Monitoring ===
echo "[✓] Menjalankan bypass WiFi speed..."
nohup bash $HOME/superAI/BypassWiFi/bypass_speed_wifi.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan AI monitoring ping..."
nohup bash $HOME/superAI/BypassWiFi/ai_monitoring.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan DNS-over-HTTPS..."
nohup cloudflared proxy-dns --address 0.0.0.0 --port 5053 --upstream https://1.1.1.1/dns-query &

echo "[✓] Menjalankan Socks5 Proxy..."
nohup ssh -D 1080 -f -C -q -N user@your_vps_ip &

#!/bin/bash

# === Menjalankan Semua Script Bypass dan Monitoring ===
echo "[✓] Menjalankan bypass WiFi speed..."
nohup bash $HOME/superAI/BypassWiFi/bypass_speed_wifi.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan AI monitoring ping..."
nohup bash $HOME/superAI/BypassWiFi/ai_monitoring.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan DNS-over-HTTPS..."
nohup cloudflared proxy-dns --address 0.0.0.0 --port 5053 --upstream https://1.1.1.1/dns-query &

echo "[✓] Menjalankan Socks5 Proxy..."
nohup ssh -D 1080 -f -C -q -N user@your_vps_ip &

#!/bin/bash

# === Menjalankan Semua Script Bypass dan Monitoring ===
echo "[✓] Menjalankan bypass WiFi speed..."
nohup bash $HOME/superAI/BypassWiFi/bypass_speed_wifi.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan AI monitoring ping..."
nohup bash $HOME/superAI/BypassWiFi/ai_monitoring.sh >/dev/null 2>&1 &

echo "[✓] Menjalankan DNS-over-HTTPS..."
nohup cloudflared proxy-dns --address 0.0.0.0 --port 5053 --upstream https://1.1.1.1/dns-query &

echo "[✓] Menjalankan Socks5 Proxy..."
nohup ssh -D 1080 -f -C -q -N user@your_vps_ip &


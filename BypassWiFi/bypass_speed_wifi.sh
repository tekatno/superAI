#!/data/data/com.termux/files/usr/bin/bash

# === SETTINGS ===
LOG="/sdcard/LogsSuperAI/bypass_wifi.log"
INTERFACE="wlan0"  # interface WiFi
HOST="1.1.1.1"     # Cloudflare DNS
LOOP_INTERVAL=5    # detik

echo "[+] Memulai bypass WiFi speed..." | tee -a $LOG

# === LOOP PING DNS untuk jaga koneksi aktif ===
while true; do
  ping -I $INTERFACE -c 1 $HOST >> $LOG
  echo "Ping sent at $(date '+%H:%M:%S')" >> $LOG
  sleep $LOOP_INTERVAL
done

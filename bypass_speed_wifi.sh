#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Memulai bypass WiFi speed (versi tanpa root)..."
echo "[i] Mengecek koneksi dengan ping ke 1.1.1.1 tanpa bind..."

while true; do
    ping -c 1 1.1.1.1 | tee -a /sdcard/LogsSuperAI/ping_log.txt
    sleep 1
done

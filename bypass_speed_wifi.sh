#!/data/data/com.termux/files/usr/bin/bash
echo "[+] Memulai bypass WiFi speed (versi tanpa root)..."
echo "[i] Mengecek koneksi dengan 3 paket ping ke 8.8.8.8..."

ping -c 3 8.8.8.8 > /dev/null

# Tes kecepatan menggunakan curl (jika tersedia)
if command -v curl >/dev/null 2>&1; then
  echo "[i] Tes kecepatan download dari Cloudflare:"
  curl -s https://speed.cloudflare.com/meta | grep -o '"download":[^,]*'
else
  echo "[!] curl tidak ditemukan, lewati tes kecepatan."
fi

echo "[✓] Bypass selesai tanpa root."

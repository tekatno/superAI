#!/bin/bash

# Aktivasi AI Monitoring + Bypass WiFi
bash ~/superAI/BypassWiFi/bypass_speed_wifi.sh &
bash ~/superAI/BypassWiFi/ai_monitoring.sh &

# Jalankan script utama Super AI
bash ~/superAI/super.sh &

# Upload otomatis ke GitHub jika ada perubahan
cd ~/superAI
git add .
git diff-index --quiet HEAD || {
  git commit -m "🆙 Auto-update by super_launcher.sh at $(date '+%F %T')"
  git push origin main
}

# Notifikasi berhasil
termux-notification --title "Super AI Aktif ✅" --content "Semua script berjalan & di-upload otomatis ke GitHub." --priority high

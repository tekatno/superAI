#!/bin/bash

# === ZIP Semua File dan Log ===
cd ~/superAI
zip -r ~/superAI.zip ./*

# === Upload ke GitHub ===
cd ~/superAI
git add super.sh upload_and_zip.sh BypassWiFi
git commit -m "Final Update: Bypass WiFi, AI Monitoring, DNS over HTTPS"
git push origin main --force

echo "✅ Semua script dan file telah di-upload ke GitHub."

#!/bin/bash

# Tambahkan semua perubahan
git add .

# Commit dengan pesan otomatis timestamp
git commit -m "Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"

# Push ke branch main (atau ganti ke master jika itu default repo kamu)
git push origin main

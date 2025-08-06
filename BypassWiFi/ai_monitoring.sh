#!/data/data/com.termux/files/usr/bin/bash

# === SETTINGS ===
LOG="/sdcard/LogsSuperAI/ai_monitor.log"
HOSTS=("1.1.1.1" "8.8.8.8" "9.9.9.9")
INTERVAL=10

echo "[+] Memulai monitoring AI Ping..." | tee -a $LOG

while true; do
  for HOST in "${HOSTS[@]}"; do
    ping -c 1 $HOST &> /dev/null
    if [ $? -eq 0 ]; then
      echo "[AI] Server $HOST reachable!" >> $LOG
      break
    else
      echo "[AI] Server $HOST unreachable, mencoba server lain..." >> $LOG
    fi
  done
  sleep $INTERVAL
done

#!/bin/bash

# === Configuration ===
CPU_THRESHOLD=70
MEM_THRESHOLD=80
DISK_THRESHOLD=80
LOG_FILE="/home/$USER/system-monitor.log"

# === Get current time ===
TIME=$(date +"%Y-%m-%d %H:%M:%S")

# === CPU Usage ===
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU_USAGE=${CPU_USAGE%.*} # Remove decimal

# === Memory Usage ===
MEM_TOTAL=$(free | grep Mem | awk '{print $2}')
MEM_USED=$(free | grep Mem | awk '{print $3}')
MEM_USAGE=$((MEM_USED * 100 / MEM_TOTAL))

# === Disk Usage ===
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# === Logging ===
echo "[$TIME] CPU: $CPU_USAGE% | RAM: $MEM_USAGE% | Disk: $DISK_USAGE%" >> $LOG_FILE

# === Alerts ===
if [ "$CPU_USAGE" -gt "$CPU_THRESHOLD" ]; then
    echo "[$TIME] ⚠️ CPU usage is high: $CPU_USAGE%" >> $LOG_FILE
fi

if [ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ]; then
    echo "[$TIME] ⚠️ Memory usage is high: $MEM_USAGE%" >> $LOG_FILE
fi

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "[$TIME] ⚠️ Disk usage is high: $DISK_USAGE%" >> $LOG_FILE
fi

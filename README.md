# System Resource Monitor

This Bash script monitors CPU, RAM, and Disk usage on a Linux system. It logs the metrics and alerts if thresholds are crossed.

## Features
- CPU usage monitoring
- RAM usage monitoring
- Disk usage monitoring
- Alerting based on thresholds
- Cron job automation

## Usage
1. Run `./monitor.sh`
2. View logs at `~/system-monitor.log`

## Automation
To run every 5 mins via cron:
```bash
*/5 * * * * /home/your-username/system-resource-monitor/monitor.sh


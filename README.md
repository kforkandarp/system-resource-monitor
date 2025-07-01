# 🖥️ System Resource Monitor (Linux Automation)

A lightweight and automated Bash script to monitor your Linux system's **CPU, RAM, and Disk usage**. It logs system metrics and provides alerts when usage exceeds specified thresholds — ideal for system health tracking without manual effort.

---

## 🚀 Features

- ✅ Real-time monitoring of:
  - CPU usage (via `mpstat`)
  - Memory (RAM) usage
  - Disk space usage
- ⚠️ Threshold-based alerting
- 📄 Logs stored locally at `/home/<your-username>/system-monitor.log`
- 🕒 Scheduled execution every 5 minutes using `cron`
- 🔧 Simple and beginner-friendly setup

---

## 📁 Project Structure

```

system-resource-monitor/
├── monitor.sh     # Main Bash script
└── README.md      # This file

````

---

## 🔧 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/kforkandarp/system-resource-monitor.git
cd system-resource-monitor
````

### 2. Make the Script Executable

```bash
chmod +x monitor.sh
```

### 3. Run the Script Manually (Optional)

```bash
./monitor.sh
```

### 4. View the Log Output

```bash
cat /home/kandarp/system-monitor.log
```
---

## 🕒 Automate with Cron

To run the script automatically every 5 minutes:

### Open the crontab editor:

```bash
crontab -e
```

### Add the following line:

```bash
*/5 * * * * /home/kandarp/system-resource-monitor/monitor.sh
```

This schedules the script to run every 5 minutes and log system resource usage automatically.

---

## 📌 Sample Log Output

![image](https://github.com/user-attachments/assets/756d099e-3728-4ecc-9f91-f59149865ebb)


```text
[2025-07-01 11:05:32] CPU: 0% | RAM: 6% | Disk: 1%
[2025-07-01 12:00:35] CPU: 100% | RAM: 6% | Disk: 1%
[2025-07-01 12:00:35] ⚠️ CPU usage is high: 100%
[2025-07-01 12:05:01] CPU: 0% | RAM: 6% | Disk: 1%
```

---

## 📚 Tools Used

* `bash` – shell scripting
* `mpstat` – CPU usage monitoring (install via `sudo apt install sysstat`)
* `free` – memory usage
* `df` – disk usage
* `cron` – scheduling automation

---


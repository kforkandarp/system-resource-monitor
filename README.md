# 🖥️ System Resource Monitor (Linux Automation)

A lightweight and automated Bash script to monitor your Linux system's **CPU, RAM, and Disk usage**. Logs system metrics and provides alerts when usage exceeds specified thresholds.

---

## 🚀 Features

- ✅ Real-time monitoring of:
  - CPU usage
  - Memory (RAM) usage
  - Disk space usage
- ⚠️ Alerts when thresholds are exceeded
- 📄 Logs saved to a local file (`system-monitor.log`)
- 🕒 Automated execution every 5 minutes using `cron`
- 💡 Beginner-friendly and easy to set up

---

## 📂 Project Structure

```

system-resource-monitor/
├── monitor.sh       # Main Bash script
└── README.md        # Project overview and usage guide

````

---

## 🔧 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/kforkandarp/system-resource-monitor.git
cd system-resource-monitor
````

### 2. Make Script Executable

```bash
chmod +x monitor.sh
```

### 3. Run the Script Manually (Optional)

```bash
./monitor.sh
```

### 4. View the Log File

```bash
cat ~/system-monitor.log
```

---

## 🛠️ Automate with Cron

To run the script every 5 minutes:

1. Open the crontab editor:

```bash
crontab -e
```

2. Add the following line (update the path if needed):

```bash
*/5 * * * * /home/kandarp/system-resource-monitor/monitor.sh
```

This schedules the script to run every 5 minutes and automatically log resource usage.

---

## 📌 Sample Log Output

```
![image](https://github.com/user-attachments/assets/780795ba-693f-4a64-9837-dbe5319ee838)

```

---

## 🤝 Contributing

This is a simple open-source utility — feel free to fork and improve it!

---

## 🙌 Acknowledgements

Built as part of a personal learning project on Linux scripting and automation.

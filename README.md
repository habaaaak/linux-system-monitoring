# linux-system-monitoring

This project automates system monitoring and basic security analysis on a Linux environment using Bash scripting. It collects system data, analyzes processes and network activity, and generates structured reports to improve visibility into system behavior and potential security risks.

---

## Features

- Monitors system information and performance  
- Analyzes running processes and resource usage  
- Detects active network connections and open ports  
- Tracks logged-in users  
- Identifies high CPU and memory usage processes  
- Generates structured logs for system analysis  
- Automates monitoring using Bash scripting  

---

## Tech Stack

- Bash  
- Linux / Unix CLI  
- ps, lsof, who  
- File system & logging  

---

## How It Works

1. Creates a log directory for output  
2. Collects system information (`uname`)  
3. Lists top processes by memory and CPU usage  
4. Analyzes active network connections  
5. Identifies logged-in users  
6. Logs all results into a structured report file  

---

## Results

- Successfully automated system monitoring using Bash scripting  
- Generated structured system reports (`system_report.txt`)  
- Identified high resource usage processes and active services  
- Provided visibility into network connections and system activity  
- Demonstrated ability to monitor and analyze system-level behavior  

---

## Challenges & Solutions

- **Issue:** Log directory did not exist  
  **Solution:** Implemented automatic directory creation using `mkdir -p`  

- **Issue:** Linux commands differed from macOS (BSD vs GNU tools)  
  **Solution:** Adapted commands (e.g., replaced `ps --sort` with `sort` and used `lsof` for network analysis)  

This reflects real-world debugging and cross-platform problem-solving.

## Sample Output


A sanitized example of the generated system report is included in the `sample-output` folder to demonstrate the structure and analysis of system data.

---

## How to Run

```bash
chmod +x monitor.sh
./monitor.sh
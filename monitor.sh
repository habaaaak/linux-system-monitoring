#!/bin/bash

echo "===== Linux System Monitoring Report =====" > logs/system_report.txt
echo "Generated on: $(date)" >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# System Info
# -------------------------
echo "---- System Information ----" >> logs/system_report.txt
uname -a >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# Active Processes
# -------------------------
echo "---- Running Processes ----" >> logs/system_report.txt
ps aux --sort=-%mem | head -n 10 >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# Network Connections
# -------------------------
echo "---- Active Network Connections ----" >> logs/system_report.txt
ss -tuln >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# Open Ports
# -------------------------
echo "---- Open Ports ----" >> logs/system_report.txt
netstat -tulnp 2>/dev/null | head -n 10 >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# Logged-in Users
# -------------------------
echo "---- Logged-in Users ----" >> logs/system_report.txt
who >> logs/system_report.txt
echo "" >> logs/system_report.txt

# -------------------------
# Suspicious Process Check
# -------------------------
echo "---- Suspicious Processes (High CPU) ----" >> logs/system_report.txt
ps aux --sort=-%cpu | head -n 5 >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "Monitoring Complete. Check logs/system_report.txt"
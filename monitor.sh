#!/bin/bash

mkdir -p logs

echo "===== Linux System Monitoring Report =====" > logs/system_report.txt
echo "Generated on: $(date)" >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "---- System Information ----" >> logs/system_report.txt
uname -a >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "---- Running Processes ----" >> logs/system_report.txt
ps aux | sort -nrk 4 | head -n 10 >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "---- Active Network Connections ----" >> logs/system_report.txt
lsof -i -P -n | head -n 10 >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "---- Logged-in Users ----" >> logs/system_report.txt
who >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "---- High CPU Processes ----" >> logs/system_report.txt
ps aux | sort -nrk 3 | head -n 5 >> logs/system_report.txt
echo "" >> logs/system_report.txt

echo "Monitoring Complete. Check logs/system_report.txt"
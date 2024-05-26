#!/bin/bash
echo "=== Raspberry Pi 5 Hardware Report ==="
echo "Date: $(date)"
echo "======================================"

echo -e "\n---CPU Information ---"
cat /proc/meminfo

echo -e "\n---Memory Information ---"
cat /proc/meminfo

echo -e "\n--- Disk Usage ---"
df -h

echo -e "\n--- Block Devices ---"
lsblk

echo -e "\n--- USB Devices ---"
lsusb

echo -e "\n--- General System Information ---"
uname -a

echo -e "\n--- SoC Configuration ---"
vcgencmd get_config int

echo -e "\n--- Temperature ---"
vcgencmd measure_temp

echo -e "\n--- Voltage ---"
vcgencmd measure_volts

echo "======================================="
echo "End of report."

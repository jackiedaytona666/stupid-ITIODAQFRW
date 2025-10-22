#!/bin/bash
# cmd_005_aggressive_mac_hunt.sh
# Force all devices on network to respond

TARGET_MAC="42:5b:44:59:ac:8c"
NETWORK="172.20.10.0/24"

echo "=== Aggressive ARP requests to find all devices ==="
for ip in {1..254}; do
    arping -c 1 -w 100 172.20.10.$ip 2>/dev/null &
done
wait
echo ""

echo "=== Full ARP table after sweep ==="
arp -a
echo ""

echo "=== nmap with service and OS detection ==="
nmap -sV -O 172.20.10.0/24 2>/dev/null | grep -E "Host|MAC|Service|OS|open"

#!/bin/bash
# cmd_004_find_suspicious_mac.sh
# Target scan for suspicious MAC on hotspot network

TARGET_MAC="42:5b:44:59:ac:8c"
NETWORK="172.20.10.0/24"

echo "=== Looking for target MAC: $TARGET_MAC ==="
echo ""

echo "=== Current ARP Table ==="
arp -a | grep -E "172.20.10"
echo ""

echo "=== Network Scan with nmap (if available) ==="
nmap -sn $NETWORK 2>/dev/null | grep -E "Nmap scan|Host is up|MAC Address" || echo "nmap not available, trying arp-scan..."
echo ""

echo "=== ARP Scan for all hosts ==="
arp-scan -l 2>/dev/null || echo "arp-scan not available"
echo ""

echo "=== Check if target is reachable ==="
ping -c 2 172.20.10.1 2>/dev/null && echo "Gateway reachable" || echo "Gateway unreachable"

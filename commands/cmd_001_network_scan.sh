#!/bin/bash
# cmd_001_network_scan.sh
# Basic network discovery and service enumeration

echo "=== Network Interface Info ==="
ip addr show
echo ""

echo "=== Active Network Connections ==="
netstat -tuln | grep LISTEN
echo ""

echo "=== ARP Table (local network devices) ==="
arp -a
echo ""

echo "=== DNS Resolution Test ==="
nslookup google.com

#!/bin/bash

echo "=== VM-Fi WiFi Connectivity Test ==="
echo "Date: $(date)"
echo ""

# Test 1: DNS Resolution
echo "[TEST 1] DNS Resolution"
echo "Command: nslookup google.com"
nslookup google.com 2>&1 | head -10
echo ""

# Test 2: Ping external IP
echo "[TEST 2] ICMP Connectivity (Ping 8.8.8.8)"
echo "Command: ping -c 3 8.8.8.8"
ping -c 3 8.8.8.8 2>&1
echo ""

# Test 3: HTTP connectivity
echo "[TEST 3] HTTP/HTTPS Access"
echo "Command: curl -I https://google.com"
curl -I https://google.com 2>&1 | head -5
echo ""

# Test 4: Download capability
echo "[TEST 4] Download Test"
echo "Command: curl -s https://api.github.com/zen"
curl -s https://api.github.com/zen
echo ""
echo ""

# Test 5: Interface info
echo "[TEST 5] Network Interface Information"
echo "Command: ip addr show"
ip addr show
echo ""

# Test 6: Routing table
echo "[TEST 6] Routing Table"
echo "Command: ip route show"
ip route show
echo ""

echo "=== Connectivity Test Complete ==="

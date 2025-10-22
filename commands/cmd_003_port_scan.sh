#!/bin/bash
# cmd_003_port_scan.sh
# Scan localhost for open ports

echo "=== Scanning localhost for open ports ==="
for port in 22 80 443 5000 8080 3306 5432; do
    (echo >/dev/tcp/localhost/$port) 2>/dev/null && echo "Port $port: OPEN" || echo "Port $port: closed"
done

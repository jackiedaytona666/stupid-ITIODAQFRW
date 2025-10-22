#!/bin/bash
# cmd_002_system_info.sh
# Gather system details

echo "=== System Info ==="
uname -a
echo ""

echo "=== Kernel Version ==="
uname -r
echo ""

echo "=== Current Users ==="
whoami
echo ""

echo "=== Listening Services ==="
ss -tlnp 2>/dev/null || netstat -tlnp 2>/dev/null

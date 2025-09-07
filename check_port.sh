#!/bin/bash
# check_port.sh

# Check if host and port are provided
if [ $# -lt 2 ]; then
  echo "Usage: $0 <host> <port>"
  exit 1
fi

HOST=$1
PORT=$2

# Optional: resolve the host
echo "Resolving host $HOST..."
nslookup $HOST

# Check if port is open
if nc -zv $HOST $PORT 2>&1; then
  echo "Port $PORT on $HOST is open"
else
  echo "Port $PORT on $HOST is closed"
fi


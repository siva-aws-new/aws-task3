#!/bin/bash
# check_port.sh
looksup guvi.in

HOST=$1
PORT=$2

if nc -zv $HOST $PORT 2>&1; then
  echo "Port $PORT on $HOST is open"
else
  echo "Port $PORT on $HOST is closed"
fi


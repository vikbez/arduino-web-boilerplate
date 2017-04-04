#!/bin/bash

python -m SimpleHTTPServer 3000 &
SERV_PID=$!

handler() {
    kill -s SIGKILL $SERV_PID
    exit 0
}

trap handler SIGINT

while true; do
    python3 pymata_iot.py
    echo 'Restarting...'
    sleep 1
done;

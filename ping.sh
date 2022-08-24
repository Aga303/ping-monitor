#!/bin/bash

HOSTS=(
    "192.168.1.1"
    "88-112-128-2.elisa-laajakaista.fi"
)

while true; do
	for host in "${HOSTS[@]}"; do
        printf "%s    %-40s: %s\n" "$(date)" "${host}" "$(ping -c 20 "${host}" 2>&1 | grep -o '[0-9]*% packet loss')" &
	done
	wait
done

#!/bin/dash

arg=$1

if test $arg = ""
then
    echo "Enter an IP address."
    exit 1
fi

for ip in $(seq 1 254)
do
    ping -t 1 -c 1 $arg.$ip | grep -E "64 bytes" | cut -d" " -f4 | tr -d ":"
done

# arg can be 192.168.0 for e.g.

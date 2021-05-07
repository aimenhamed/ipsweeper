#!/bin/dash

file=$1

for ip in $(cat $file)
do
    nmap -p 80 -T4 $ip
done

#!/bin/bash 
while true; do
dd if=/dev/zero  of=/root/test-$HOSTNAME bs=50K count=1000
sleep 5
done

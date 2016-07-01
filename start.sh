#!/bin/bash
 while true
 do
 dd if=/dev/zero  of=/50M.file-$HOSTNAME bs=1M count=50
 sleep 5
 done

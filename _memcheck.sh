#!/bin/sh

while true ; do
        date
        free | grep "Mem:"

        mem=`free -m | grep "Mem" | awk -F " " '{print $4}'`

        if [[ mem < 100 ]] ; then
          date
          echo OOM alert for nodeos
          pkill -2 nodeos

          sleep 300
          nodeos -d /mnt/data > eos.log 2>&1
        fi

        sleep 900
done


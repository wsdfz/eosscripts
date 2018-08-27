        mem=`free -m | grep "Mem" | awk -F " " '{print $4}'`

        if [[ mem < 100 ]] ; then
          date
          echo OOM alert for nodeos
          pkill -2 nodeos

          sleep 300
          nodeos -d /mnt/data
        end if

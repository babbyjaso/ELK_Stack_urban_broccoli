#!/bin/bash

free | grep -i mem | awk '{print $4}' > ~/backups/freemem/free_mem.txt
df -h /dev/sda1 > ~/backups/freedisk/free_disk.txt
du -hs > ~/backups/diskuse/disk_usage.txt
lsof > ~/backups/openlist/open_list.txt

#!/bin/bash
read -p "Enter Date: " filedate
read -p "Enter Time (Hour and AM/PM seperated by a space): " filetime filehour
cat $filedate\_Dealer_schedule | grep -i "$filetime\:00:00 $filehour" | awk -F'\t' '{print $3, "will be working at", $1, "at the Roulette table"}'

#!/bin/bash

favs=(Texas Kansas Illinois Michigan Tennesee)

for state in ${favs[@]};
do
if [ $state = "Hawaii" ]
then
  echo "Hawaii is the best!"
else
  echo "I'm not fond of Hawaii, I'm fond of $state"
fi
done

for x in {0..9};
do
if [ $x = 3 ] || [ $x = 5 ] || [ $x = 9 ]
then
  echo $x
fi
done


#!/bin/bash
#user inputs varibles below
read -p "Enter Date: " filedate
read -p "Enter Time (Hour and AM/PM seperated by a space): " filetime filehour
read -p "Enter Game (Blackjack, Roulette or Texas Hold Em): " filegame
#Plug variables into ifs, elses and piping it through grep and awk
if [ "$filegame" == "Blackjack" ] ; then
        cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation/Dealer_Analysis/$filedate\_Dealer_schedule | grep -i "$filetime\:00:00 $filehour" | awk -F'\t' '{print $2, "w$
elif [ "$filegame" == "Roulette" ] ; then
        cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation/Dealer_Analysis/$filedate\_Dealer_schedule | grep -i "$filetime\:00:00 $filehour" | awk -F'\t' '{print $3, "w$
elif [ "$filegame" == "Texas Hold Em" ] ; then
        cat ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation/Dealer_Analysis/$filedate\_Dealer_schedule | grep -i "$filetime\:00:00 $filehour" | awk -F'\t' '{print $4, "w$
fi

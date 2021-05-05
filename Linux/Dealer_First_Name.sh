#!/bin/bash
read -p "Enter First name of Roulette Dealer: " Dealername
read -p "Enter Date: " Dealerdate
cat $Dealerdate\_Dealer_schedule | awk '{print $1,$2,$5}' | grep -i $Dealername 
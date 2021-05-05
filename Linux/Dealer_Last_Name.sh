#!/bin/bash
read -p "Enter Last name of Roulette Dealer: " Dealername
read -p "Enter Date: " Dealerdate
cat $Dealerdate\_Dealer_schedule | awk '{print $1,$2,$6}' | grep -i $Dealername 

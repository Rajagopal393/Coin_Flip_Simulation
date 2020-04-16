#!/bin/bash -x

echo "Enter number of coins u want to flip"
read numberOfCoins

echo "enter number of times u want to flip the coin"
read numberOfFlips

isHead=1
isTail=0
headsCount=0
tailsCount=0
Head=0
Tail=0

if [ $(($numberOfCoins%2)) -eq $isHead ]; then 
	critirea=$(( ($numberOfCoins/2)+1 ))
else
	critirea=$(($numberOfCoins/2))
fi

for ((  count=1; $count<=$numberOfFlips; count++ ))
	do
		headsCount=0 
		for (( coinCount=1; $coinCount<=$numberOfCoins; coinCount++ ))
			do
	    			flipCheck=$((RANDOM%2))
	   			if [ $isHead -eq $flipCheck ]; then
            	   				headsCount=$(($headsCount+1))
	       			else
    	    	   				tailsCount=$(($tailsCount+0))
	    			fi
			done
		if [ $headsCount -ge $critirea ]; then
			Head=$(($Head+1))
		else
			Tail=$(($Tail+1))
		fi
	done


headPercentage=$(($Head*100/$numberOfFlips))
echo "Head Percentage: $headPercentage"
tailPercentage=$((100-$headPercentage))
echo "Tail Percentage: $tailPercentage"


if [ $headPercentage -gt $tailPercentage ]; then
	echo "Most combination is Head"
else
	echo "Most combination is Tail"
fi
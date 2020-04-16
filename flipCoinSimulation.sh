#!/bin/bash -x

echo "enter number of times u want to flip the coin"
read numberOfFlips

isHead=1
isTail=0
headsCount=0
tailsCount=0
numberOfCoins=2
sum=$numberOfCoins
Head=0
Tail=0

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
		if [ $headsCount -eq $numberOfCoins ]; then
			Head=$(($Head+1))
		elif [ $sum -eq 0 ]; then
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

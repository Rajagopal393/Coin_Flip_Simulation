#!/bin/bash -x

echo "enter number of times u want to flip the coin"
read numberOfFlips

isHead=1
isTail=0
headsCount=0
tailsCount=0

for (( count=1; $count<=$numberOfFlips; count++ ))
	do
	    flipCheck=$((RANDOM%2))
	    if [ $isHead -eq $flipCheck ]
	       then
            	   headsCount=$(($headsCount+1))
	       else
    	    	   tailsCount=$(($tailsCount+1))
	    fi
	done

headPercentage=$(( $headsCount*100/$numberOfFlips ))
tailPercentage=$(( $tailsCount*100/$numberOfFlips ))

echo "Percentage of Head: $headPercentage and Percentage of Tail: $tailPercentage"


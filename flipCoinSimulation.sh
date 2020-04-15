#!/bin/bash -x

flipCheck=$((RANDOM%2))
isHead=1
isTail=0

if [ $check -eq $Heads ]
then
    echo "This time Head"
else
    echo "This time Tail"
fi
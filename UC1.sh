#!/bin/bash/ -x

function coinFlip()
{
x=$((RANDOM%2))
if [ $x -eq 0 ]
then 
echo "We got head!!"
else [ $x -eq 1 ]
echo "We got tail!!"
fi
}
coinFlip
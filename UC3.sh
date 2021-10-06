#!/bin/bash/ -x

function coinFlip()
{
x=$((RANDOM%2))
if [ $x -eq 0 ]
then 
echo "We got head!!"
head=$(($head+1))

else [ $x -eq 1 ]
echo "We got tail!!"
tail=$(($tail+1))
fi
}

function usingLoop()
{

outcome=0
while [[ $head -lt 21 || $tail -lt 21 ]]
do
coinFlip
outcome=$(($outcome+1))
done

echo "coin flipped "$outcome" times"
echo "Got head "$head " times"
echo "Got tail "$tail " times"

if [ $head -gt $tail ]
then
y=$(($head-$tail))
echo "Head won by "$y" times"
fi
if [ $head -lt $tail ]
then
y=$(($tail-$head))
echo "Tail won by "$y" times"
fi
}

usingLoop
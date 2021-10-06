#!/bin/bash/ -x
head=0;
tail=0;
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
while [ $outcome -lt 15 ]
do
coinFlip
outcome=$(($outcome+1))
done

echo "coin flipped "$outcome" times"
echo "Got head "$head " times"
echo "Got tail "$tail " times"
}
usingLoop
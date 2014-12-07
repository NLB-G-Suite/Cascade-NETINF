#!/bin/bash
COUNTER=1
while [  $COUNTER -lt 19 ]; do
    ./netinf -i:$COUNTER'cascades.txt' -e:100 -o:'TestReddit/'$COUNTER'-100' &
    let COUNTER=COUNTER+1 
done

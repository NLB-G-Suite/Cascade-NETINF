#!/bin/bash
COUNTER=1
while [  $COUNTER -lt 20 ]; do
    ./netinf -i:$COUNTER'cascades.txt' -e:500 -o:'TestReddit/'$COUNTER'-500' &
    let COUNTER=COUNTER+1 
done

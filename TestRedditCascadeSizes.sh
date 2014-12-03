#!/bin/bash
COUNTER=0
rm -rf TestReddit
mkdir TestReddit
while [  $COUNTER -lt 2 ]; do
    rm -rf $COUNTER
    mkdir $COUNTER
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:250 -o:'TestReddit/'$COUNTER'output-250' > '250log'$COUNTER'.txt'
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:500 -o:'TestReddit/'$COUNTER'output-500' > '500log'$COUNTER'.txt'
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:100 -o:'TestReddit/'$COUNTER'output-100' > '100log'$COUNTER'.txt'
    let COUNTER=COUNTER+1 
done

#!/bin/bash
COUNTER=4
while [  $COUNTER -lt 8 ]; do
    echo Running  $COUNTER with 250
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:250 -o:'TestReddit/'$COUNTER'output-250' > 'TestReddit/250log'$COUNTER'.txt'
    echo Running  $COUNTER with 500
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:500 -o:'TestReddit/'$COUNTER'output-500' > 'TestReddit/500log'$COUNTER'.txt'
    echo Running  $COUNTER with 100
    ./netinf -i:'Scripts&Stuff/Cascades/'$COUNTER'cascades.txt' -e:100 -o:'TestReddit/'$COUNTER'output-100' > 'TestReddit/100log'$COUNTER'.txt'
    let COUNTER=COUNTER+1 
done

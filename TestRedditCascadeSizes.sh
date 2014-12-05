#!/bin/bash
COUNTER=1
while [  $COUNTER -lt 19 ]; do
    ./netinf -i: $COUNTER'cascades.txt' -e:250 -o:'TestReddit/'$COUNTER'output-250'
done

#!/bin/bash
for OUTPUT in $(docker images)
do
    len=${#OUTPUT}
    if [ $len = 12 ];
    then
        docker rmi $OUTPUT
    fi
done

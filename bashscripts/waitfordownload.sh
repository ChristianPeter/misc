#!/bin/bash

while :
do
    if ! [[ `lsof -c $1 | grep $2` ]]
    then
        break
    fi
    sleep 30
done
echo "done"
shutdown -h 2

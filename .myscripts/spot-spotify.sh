#!/bin/bash

running=$(playerctl -l)
while read i
do
    if echo $running | grep "$i" > /dev/null
    then
        echo $i
    fi
done < ~/.config/playerctl/order

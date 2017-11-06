#!/bin/bash
NUMBER=$((1 + RANDOM % 100))
INPUT=-1
until [ $INPUT = $NUMBER ]; do
    echo "Guess a number: "
    read INPUT
    if [ $INPUT -lt $NUMBER ]; then
        echo "Too low!"
    elif [ $INPUT -gt $NUMBER ]; then
        echo "Too large!"
    else
        echo "You got it great!"
    fi    
done

#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOL" | cut -d',' -f7 | {
    my_sum=0
    num_lines=0

    while read line
    do
        my_sum=$((my_sum + line));
        num_lines=$((num_lines + 1))
    done

    echo $((my_sum / num_lines))
}

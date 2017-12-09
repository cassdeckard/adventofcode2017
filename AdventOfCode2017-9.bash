#!/bin/bash

while read line
do
    <<<"$line" sed -e 's/!.//g'\
    | sed -e 's/<[^>]*>//g'\
    | sed -e 's/{,\+/{/g'\
    | sed -e 's/,\+}/}/g'\
    | tr '{}' '[]'\
    | python -mjson.tool\
    | sed -e 's/ \+\]//g'\
    | sed -e 's/    \|\[/./g'\
    | tr -cd '.'\
    | wc -c
done

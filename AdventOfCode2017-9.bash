#!/bin/bash

while read line
do
    <<<"$line" sed -e 's/!.//g'\
    | sed -e 's/<[^>]*>//g'\
    | sed -e 's/{,\+/{/g'\
    | sed -e 's/,\+}/}/g'\
    | tr '{}' '[]'\
    | python -mjson.tool
done

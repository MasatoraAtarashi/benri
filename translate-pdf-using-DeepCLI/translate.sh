#!/bin/shd
input=$1
text=`cat $input | tr -d '\r' | tr -d '\n'`
echo `deepl en:ja <<< $text`
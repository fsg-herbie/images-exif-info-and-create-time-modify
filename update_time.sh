#!/bin/bash
for file in `ls ${pwd}`; do
    your_name=${file:4};
    ymd=${your_name:0:8};
    hi=${your_name:9:4};
    s=${your_name:13:2};
    `touch -m -t  ${ymd}${hi}.${s} ${file}`;
done

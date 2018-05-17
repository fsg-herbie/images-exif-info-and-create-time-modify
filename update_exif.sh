#!/bin/bash

yum install exiftool -y

for file in `ls ${pwd}`; do
    your_name=${file:4};#截取掉IMG部分
    y=${your_name:0:4};#取年
    m=${your_name:4:2};#取月
    d=${your_name:6:2};#取日
    h=${your_name:9:2};#取时
    i=${your_name:11:2};#取分
    s=${your_name:13:2};#取秒
    `exiftool -DateTimeOriginal="${y}:${m}:${d} ${h}:${i}:${s}" ${file}`
done

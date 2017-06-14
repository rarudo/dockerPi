#!/bin/bash

array=("America" "Japan" "Australia" "China" "Russia" "England")

for((j=0;j<8;j++));do
	for((i = 0; $i < 20; i++));do
		ipLast=`printf "%02d" ${i}`
		random=$((RANDOM % ${#array[@]}))
		docker run -d --net=pi_network$j --ip=192.168.$j.1${ipLast} me/picurl curl_post 192.168.99.4:5000 ${array[${random}]}
	done
done

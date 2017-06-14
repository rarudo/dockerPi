#!/bin/bash

for((i = 0; $i < 20; i++));do
	ipLast=`printf "%02d" ${i}`
	random=$((RANDOM % ${#array[@]}))
	docker run -d --net=pi_network$j --ip=192.168.1.1${ipLast} me/picurl curl_post 192.168.99.4:5000 ${array[${random}]}
done

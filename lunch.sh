#!/bin/bash

bash /home/pirate/dockerPi/removeAll.sh 
for((i = 0; $i < 20; i++));do
	ipLast=`printf "%02d" ${i}`
	docker run -d --rm --net=pi_network --ip=86.105.227.1${ipLast} me/picurl curl_post 192.168.98.28:5000 Europe
done

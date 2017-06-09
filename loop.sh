!# /bin/bash

for((i = 0; $i < 254; i++));do
	docker run -d --net=pi_network --ip=192.168.200.${i} me/picurl curl_post
done

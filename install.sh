for((i=0;i<8;i++));do
	docker network create --subnet=192.168.$i.0/24 pi_network$i
done


#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating springdemocontainer$i container.."
    sleep 1
    docker run -it --name springdemocontainer$i -p 4040:8080 demo/springdemo-img /bin/bash
    echo "springdemocontainer$i container has been created!"
	echo "=============================="
done
#docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} `docker ps -q` > IPs.txt

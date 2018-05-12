#!/bin/bash
#docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e HOST_IP=$1 -e ZK=$2 -i -t wurstmeister/kafka /bin/bash

NETWORK_NAME=`docker network ls -f name=kafka* -q`

docker network ls
echo $NETWORK_NAME

docker run --network=$NETWORK_NAME --rm -v /var/run/docker.sock:/var/run/docker.sock -e HOST_IP=$1 -e ZK=$2 -i -t wurstmeister/kafka /bin/bash

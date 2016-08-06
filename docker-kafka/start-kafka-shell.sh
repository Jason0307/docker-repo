#!/bin/bash
docker run --rm -v //c/Users/vampi/var/run/docker.sock:/var/run/docker.sock -e HOST_IP=$1 -e ZK=$2 -i -t kafka_kafka bash

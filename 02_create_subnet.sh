#!/bin/bash
. ./openrc.sh
. ./config.sh

set -e

# Create the network and subnet for nodes and admin instance
openstack network create $NETWORK_NAME
SUBNET_RESULT=$(openstack subnet create $SUBNET_NAME --network $NETWORK_NAME --dhcp --subnet-range 10.10.10.0/24 --dns-nameserver 83.166.143.51 --dns-nameserver 83.166.143.52 --allocation-pool start=10.10.10.100,end=10.10.10.200 -f json)

ID=$(echo $SUBNET_RESULT | jq '.id')
echo "SUBNET_ID=${ID}" | tee -a ./cache.sh

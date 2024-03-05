#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack network create $NETWORK_NAME

openstack subnet create $SUBNET_NAME --network $NETWORK_NAME --dhcp --subnet-range 10.10.10.0/24 --dns-nameserver 83.166.143.51 --dns-nameserver 83.166.143.52 --allocation-pool start=10.10.10.100,end=10.10.10.200

#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack security group create $SEC_GROUP
openstack security group rule create --ingress --protocol tcp --dst-port 22 --ethertype IPv4 $SEC_GROUP
openstack security group rule create --ingress --protocol icmp --dst-port 0 --ethertype IPv4 $SEC_GROUP


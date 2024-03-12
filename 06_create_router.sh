#!/bin/bash
. ./openrc.sh
. ./config.sh
source ./cache.sh # This file is created by 02_create_subnet.sh

set -e

ROUTER_ID=$(openstack router create ${ROUTER_NAME} --external-gateway ${EXT_FLOATING} -f json | jq -r '.id')
echo "Router ID: ${ROUTER_ID}"
openstack router add subnet ${ROUTER_ID} ${SUBNET_ID}
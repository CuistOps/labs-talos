#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack server create --key-name $KEY_NAME --flavor $FLAVOR --network $EXTERNAL_NET --network $SUBNET --image "$IMAGE" $INSTANCE_NAME

openstack server add security group $INSTANCE_NAME $SEC_GROUP

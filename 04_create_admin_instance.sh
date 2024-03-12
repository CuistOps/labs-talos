#!/bin/bash
. ./openrc.sh
. ./config.sh

set -e

# The instance that will be created is the admin instance
# The admin instance is the instance that will be used to manage the cluster through talosctl and kubectl

openstack server create --key-name $KEY_NAME --flavor $ADMIN_FLAVOR --network $EXTERNAL_NET --network $SUBNET --image "$IMAGE" $INSTANCE_NAME
openstack server add security group $INSTANCE_NAME $SEC_GROUP_ADMIN

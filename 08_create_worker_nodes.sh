#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack server create --min $NUMBER_OF_WORKER_INSTANCES --max $NUMBER_OF_WORKER_INSTANCES --flavor $WORKER_FLAVOR --network $NETWORK_NAME --image "$IMAGE_NAME" $WORKER_INSTANCE_NAME

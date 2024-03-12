#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack server create --min $NUMBER_OF_CONTROL_PLANE_INSTANCES --max $NUMBER_OF_CONTROL_PLANE_INSTANCES --flavor $CONTROL_PLANE_FLAVOR --network $NETWORK_NAME --image "$IMAGE_NAME" $CONTROL_PLANE_INSTANCE_NAME

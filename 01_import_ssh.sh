#!/bin/bash
. ./openrc.sh
. ./config.sh

# Upload your SSH key to OpenStack
openstack keypair create --public-key "$SSH_KEY" "$KEY_NAME"


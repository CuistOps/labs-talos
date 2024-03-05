#!/bin/bash
. ./openrc.sh
. ./config.sh

openstack keypair create --public-key "$SSH_KEY" "$KEY_NAME"

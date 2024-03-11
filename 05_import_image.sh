#!/bin/bash

set -euix 

wget https://github.com/siderolabs/talos/releases/download/v1.6.5/openstack-amd64.raw.xz -O ./openstack-talos-amd64.raw.xz

xz -d ./openstack-talos-amd64.raw.xz

openstack image create "Talos v1.6.4" --container-format bare  --disk-format raw --file ./talos-img-v1.6.4.raw

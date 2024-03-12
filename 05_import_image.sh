#!/bin/bash
. ./openrc.sh
. ./config.sh

set -e

wget "${IMAGE_URL}" -O /tmp/openstack-talos-amd64.raw.xz
xz -d /tmp/openstack-talos-amd64.raw.xz
echo "Uploading image to OpenStack"
openstack image create "${IMAGE_NAME}" --container-format bare  --disk-format raw --file /tmp/openstack-talos-amd64.raw
echo "Image uploaded"

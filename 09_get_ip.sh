#!/bin/bash
. ./openrc.sh
. ./config.sh

json_data=$(openstack server list -f json)
admin_ip=$(echo "$json_data" | jq -r '.[] | select(.Name == "admin-machine") | .Networks."ext-net1"[0]')
echo -e "Admin IP: \n$admin_ip"
echo "-------------------"
control_plane_ips=$(echo "$json_data" | jq 'sort_by(.Name)' | jq -r '.[] | select(.Name | startswith("control-plane")) | .Networks."talos-net"[0]')
echo -e "Control Plane IPs: \n$control_plane_ips"
echo "-------------------"
worker_ips=$(echo "$json_data" | jq 'sort_by(.Name)' | jq -r '.[] | select(.Name | startswith("worker")) | .Networks."talos-net"[0]')

echo -e "Worker IPs: \n$worker_ips"
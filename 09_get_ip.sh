#!/bin/bash
. ./openrc.sh
. ./config.sh

json_data=$(openstack server list -f json)
admin_ip=$(echo "$json_data" | jq -r '.[] | select(.Name == "admin-machine") | .Networks."ext-net1"[0]')
echo -e "Admin IP: \n$admin_ip"
echo "$admin_ip" > ./talos-scripts/admin_ip.txt
echo "-------------------"
control_plane_ips=$(echo "$json_data" | jq 'sort_by(.Name)' | jq -r '.[] | select(.Name | startswith("control-plane")) | .Networks."talos-net"[0]')
echo -e "Control Plane IPs: \n$control_plane_ips"
echo "$control_plane_ips" > ./talos-scripts/control_plane_ips.txt
echo "-------------------"
worker_ips=$(echo "$json_data" | jq 'sort_by(.Name)' | jq -r '.[] | select(.Name | startswith("worker")) | .Networks."talos-net"[0]')

echo -e "Worker IPs: \n$worker_ips"
echo "$worker_ips" > ./talos-scripts/worker_ips.txt
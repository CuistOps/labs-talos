#!/bin/bash
IP_FILE=./admin_ip.txt
scp -r ./talos-scripts debian@$(cat $IP_FILE):
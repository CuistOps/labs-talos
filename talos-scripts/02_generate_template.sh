#!/bin/bash

# TODO: Finir de remplir le fichier talconfig.yaml.j2
 
export control_plane_ips=$(cat ./control_plane_ips.txt)
export worker_ips=$(cat ./worker_ips.txt)

j2 talconfig.yaml.j2 > talconfig.yaml
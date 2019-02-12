#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Pass public IP address"
  exit 1
fi

PUBLIC_IP=$1

echo "Doing..."

docker-compose run --rm openvpn ovpn_genconfig -u udp://$PUBLIC_IP
docker-compose run --rm openvpn ovpn_initpki

echo "Done."

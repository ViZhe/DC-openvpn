#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Pass client name"
  exit 1
fi

CLIENTNAME=$1

echo "Removing client ${CLIENTNAME}..."

docker-compose run --rm openvpn ovpn_revokeclient $CLIENTNAME remove

echo "Done."

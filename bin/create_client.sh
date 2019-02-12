#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Pass client name"
  exit 1
fi

CLIENTNAME=$1

echo "Building certificate for ${CLIENTNAME}..."

docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn

echo "Done."

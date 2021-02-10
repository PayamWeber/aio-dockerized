#!/bin/sh

export $(grep -v '^#' .env | xargs -d '\n')

docker run -itd --cap-add NET_ADMIN \
--restart unless-stopped \
--name=nordivpn \
-p 1080:1080 \
-e USER=${NORDVPN_USERNAME} \
-e PASS=${NORDVPN_PASSWORD} \
-e CONNECT=${NORDVPN_COUNTRY} \
-e TECHNOLOGY=NordLynx \
twitchax/nordvpn-proxy

# docker run -d \
# --cap-add=NET_ADMIN \
# --name=nordivpn \
# --dns=103.86.96.100 \
# --dns=103.86.99.100 \
# --restart=unless-stopped \
# -e "USERNAME=${NORDVPN_USERNAME}" \
# -e "PASSWORD=${NORDVPN_PASSWORD}" \
# -e "LOCAL_NETWORK=192.168.1.0/24" \
# -v /etc/localtime:/etc/localtime:ro \
# -v ovpn-data:/app/ovpn/config \
# -p 8118:8118 \
# jeroenslot/nordvpn-proxy:latest 
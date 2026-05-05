#!/usr/bin/env bash
set -e

[ ! -d "/opt/sftpgo" ] && git clone https://github.com/francescobianco/sftpgo /opt/sftpgo

cd /opt/sftpgo

git pull --no-rebase

chmod 777 data/

cp -f docker-compose.override.yml.example docker-compose.override.yml
touch tunnel.pub

docker compose up -d --force-recreate

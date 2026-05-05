#!/usr/bin/env bash
set -e

[ ! -d "/opt/sftpgo" ] && git clone https://github.com/francescobianco/sftpgo /opt/sftpgo

cd /opt/sftpgo

git pull --no-rebase

chmod 777 data/

cp -f docker-compose.override.yml.example docker-compose.override.yml

docker compose stop
rm -fr tunnel.pub
touch tunnel.pub
chmod 777 tunnel.pub
ls -la

docker compose up -d --force-recreate

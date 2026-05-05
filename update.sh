#!/usr/bin/env bash
set -e

[ ! -d "/opt/sftpgo" ] && git clone https://github.com/francescobianco/sftpgo /opt/sftpgo

cd /opt/sftpgo

git pull --no-rebase

cp docker-compose.override.yml.example docker-compose.override.yml

docker compose up -d --force-recreate

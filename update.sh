#!/usr/bin/env bash
set -e

[ ! -d "/opt/sftpgo" ] && git clone https://github.com/francescobianco/sftpgo /opt/sftpgo

cd /opt/sftpgo

git pull --no-rebase

docker compose up -d --force-recreate

#!/usr/bin/env bash
set -e

[ ! -d "/opt/sftpgo" ] && git clone https://github.com/francescobianco/sftpgo /opt/sftpgo

cd /opt/sftpgo

git pull --no-rebase

mkdir -p data || true
rm -f data/.gitkeep || true
touch data/sftpgo.db
chmod 777 -R data/

cp -f docker-compose.override.yml.example docker-compose.override.yml

cat docker-compose.override.yml

docker compose up -d --force-recreate
sleep 5
docker compose logs
docker compose ps

curl http://localhost:18080

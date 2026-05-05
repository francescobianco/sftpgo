# sftpgo


```shell
docker run -d \
    --restart always \
    -e SSH_REMOTE_USER=tunnel \
    -e SSH_REMOTE_HOST=drive.alterloop.dev \
    -e SSH_REMOTE_PORT=2222 \
    -e SSH_TUNNEL_PORT=2223 \
    -e SSH_TARGET_PORT=22 \
    -e SSH_TARGET_HOST=192.168.144.10 \
    -v ~/.ssh/id_rsa:/id_rsa:ro \
    jnovack/autossh
```

```shell
autossh -f -M 0 -N \
  -o StrictHostKeyChecking=no \
  -o ServerAliveInterval=10 \
  -o ServerAliveCountMax=3 \
  -o ExitOnForwardFailure=yes \
  -i ~/.ssh/id_rsa \
  -R 0.0.0.0:2224:192.168.144.33:22 \
  -p 2222 \
  tunnel@drive.alterloop.dev
```
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

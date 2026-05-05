
push:
	@git add .
	@git commit -m "Updated at $$(date +'%Y-%m-%d %H:%M:%S')" || true
	@git push

deploy: push
	@hostrun alterloop update.sh

server-logs:
	@hostrun alterloop -c "cd /opt/sftpgo && docker compose logs -f"

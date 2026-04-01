.PHONY: up
up:
	- docker compose up -d

.PHONY: ps
ps:
	- docker compose ps

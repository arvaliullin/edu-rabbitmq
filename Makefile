.PHONY: up
up:
	- docker compose up -d

.PHONY: down
down:
	- docker compose down -v

.PHONY: ps
ps:
	- docker compose ps

.PHONY: cluster
cluster-status:
	- docker compose -f docker-compose.cluster.yml exec rabbit1 rabbitmq-diagnostics -q cluster_status

.PHONY: cluster-up
cluster-up:
	- docker compose -f docker-compose.cluster.yml up -d

.PHONY: cluster-down
cluster-down:
	- docker compose -f docker-compose.cluster.yml down -v

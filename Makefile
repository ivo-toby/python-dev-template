# Variables
DOCKER_COMPOSE = docker-compose -f docker-compose.local.yml

# Commands
.PHONY: build
build:
	$(DOCKER_COMPOSE) build

.PHONY: up
up:
	$(DOCKER_COMPOSE) up -d

.PHONY: down
down:
	$(DOCKER_COMPOSE) down

.PHONY: dev-shell
dev-shell:
	$(DOCKER_COMPOSE) run --rm api-service-dev /bin/bash

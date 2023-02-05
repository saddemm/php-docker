DOCKER_COMPOSE = docker-compose
EXEC_PHP       = $(DOCKER_COMPOSE) exec php
SYMFONY        = $(EXEC_PHP) bin/console
ENV            = dev
COMPOSER       = $(EXEC_PHP) composer
CONTAINER_NAME = php

## Project

build: ## build the project
	@$(DOCKER_COMPOSE) build
start: ## Start the project
	@$(DOCKER_COMPOSE) up -d
stop: ## Stop the project
	@$(DOCKER_COMPOSE) stop
vendors: ## install dependencies
	$(COMPOSER) install
console: ## install dependencies
	@$(DOCKER_COMPOSE) exec -u www-data php bash
console-root: ## install dependencies
	@$(DOCKER_COMPOSE) exec php bash

CONTAINER_NAME=app-php
COMPOSEV2 := $(shell docker compose version)

ifdef COMPOSEV2
    COMMAND=docker compose
else
    COMMAND=docker-compose
endif

docker-up:
	$(COMMAND) up -d


docker-down:
	$(COMMAND) down

docker-build:
	$(COMMAND) build

docker-bash: docker-up
	docker exec -it $(CONTAINER_NAME) sh
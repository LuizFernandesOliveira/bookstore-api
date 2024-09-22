OS := $(shell uname)
PYTHON = python3
DJANGO_MANAGE = $(PYTHON) manage.py

ifeq ($(OS), Linux)
  	DOCKER_COMPOSE_CMD = docker-compose
else ifeq ($(OS), Darwin)
  	DOCKER_COMPOSE_CMD = docker compose
endif


docker-up:
	$(DOCKER_COMPOSE_CMD) -p bookstore_containers -f ./docker-compose.yaml up

docker-down:
	$(DOCKER_COMPOSE_CMD) -p bookstore_containers -f ./docker-compose.yaml down

database-makemigrations:
	$(DJANGO_MANAGE) makemigrations $(app)

database-migrate:
	$(DJANGO_MANAGE) migrate

server-run:
	$(DJANGO_MANAGE) runserver 0.0.0.0:8000
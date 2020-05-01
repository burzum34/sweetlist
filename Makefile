.PHONY: \
	build run up down ps

build:
	docker-compose build

run:
	docker-compose up

up:
	docker-compose up --detach

down:
	docker-compose down

ps:
	docker-compose ps

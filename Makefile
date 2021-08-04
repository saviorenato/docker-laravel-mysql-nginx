#Recipes
all: init

init:
	@docker-compose up -d
build:
	@docker-compose up -d --build

.PHONY: all init
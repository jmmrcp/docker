NAME = jmmrcp/php-fpm:7.2.8

default: build ## genera la imagen

build: ## genera la imagen por defecto.
	docker build --rm -f Dockerfile -t $(NAME) .

build-nc: ## genera la imagen sin utilzar la cache
	docker build --rm --no-cache -t $(NAME) .
    
push: ## sube la imagen a DockerHub
	docker push $(NAME)

debug: ## ejecuta la imagen con promt
	docker run --rm -it $(NAME) /bin/ash

run: ## ejecuta la imagen por defecto
	docker run --rm -dit --name php -p 9000:9000 $(NAME)

stop: ## detiene la imagen
	docker container stop php

release: build-nc push ## Genera y sube la iamgen a DockerHub

.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
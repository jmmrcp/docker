NAME = jmmrcp/lsws:1.4.28

default: build ## genera la imagen

build: ## genera la imagen por defecto.
	docker build --rm -f Dockerfile -t $(NAME) .

build-nc: ## genera la imagen sin utilzar la cache
	docker build --no-cache -t $(APP_NAME) .
    
push: ## sube la imagen a DockerHub
	docker push $(NAME)

debug: ## ejecuta la imagen con promt
	docker run --rm -it $(NAME) /bin/ash

run: ## ejecuta la imagen por defecto
	docker run --rm -dit -v ~/data:/var/lib/litespeed/Example/html --name www -p 443:443 -p 7080:7080 -p 8088:8088 $(NAME)

stop: ## detiene la imagen
	docker container stop www

release: build-nc push ## Genera y sube la iamgen a DockerHub

.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
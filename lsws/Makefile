NAME = jmmrcp/lsws:1.4.28

default: build

build:
	docker build --rm -f Dockerfile -t $(NAME) 
    
push:
	docker push $(NAME)

debug:
	docker run --rm -it $(NAME) /bin/ash

run:
	docker run --rm -dit -v ~/data:/var/lib/litespeed/Example/html --name www -p 443:443 -p 7080:7080 -p 8088:8088 $(NAME)

stop:
	docker container stop www

release: build push
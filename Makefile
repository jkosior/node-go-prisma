SHELL:=/bin/bash

start:
	@docker-compose up -d

dev:
	@docker-compose up

enter_server:
	@docker exec -it server /bin/bash

stop:
	@docker-compose down

prune:
	@docker container prune -f \
		&& docker network prune -f
up:
	docker-compose up

down:
	docker-compose down

recreate:
	docker-compose up --force-recreate --build

bash:
	docker-compose exec app bash

ps:
	docker-compose ps
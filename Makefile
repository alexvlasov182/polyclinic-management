up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it ddff2eafb544  bash

connect_db:
	docker exec -it fe04f5559551 bash
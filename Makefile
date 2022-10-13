up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it 48e256594957 bash

connect_db:
	docker exec -it 7f6fb67c781f bash
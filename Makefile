up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it 0c3057e78b63 bash

connect_db:
	docker exec -it 0e3f2b68bd24 bash

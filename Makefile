up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it 36a3ced1dc5d  bash

connect_db:
	docker exec -it d2cbbbe780f5 bash
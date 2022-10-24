up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it f52eb6d28526  bash

connect_db:
	docker exec -it 0cb66b6660a3 bash
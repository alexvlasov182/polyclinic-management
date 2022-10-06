up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it d6c67acb45db bash

connect_db:
	docker exec -it 7ae73ec2cbb2 bash
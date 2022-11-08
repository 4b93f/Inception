all:
	mkdir -p /home/charli/data
	mkdir -p /home/charli/data/wp
	mkdir -p /home/charli/data/db
	docker compose -f srcs/docker-compose.yml up --build
up:
	docker compose -f srcs/docker-compose.yml up --build

down:
	docker compose -f srcs/docker-compose.yml down

clean: 
	docker compose -f srcs/docker-compose.yml down -v

fclean: down clean
	rm -rf /home/charli/data
	docker network prune -f
	docker system prune -a --volumes
	docker image prune -f

re: fclean all

.PHONY: all up down clean fclean re
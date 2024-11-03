all : make

setup-env:
	@if [ ! -f ./srcs/.env ]; then cp ./srcs/.env-example ./srcs/.env; fi

setup-volumes:
	@mkdir -p /home/jiko/data/wp
	@mkdir -p /home/jiko/data/db

make: setup-env setup-volumes
	docker compose -f ./srcs/docker-compose.yml up --build -d

clean:
	docker compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	docker system prune -a
	@sudo rm -rf /home/jiko/data/wp
	@sudo rm -rf /home/jiko/data/db

re : fclean all

.PHONY: all re clean fclean setup-env setup-volumes

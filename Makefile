all : make

setup-env:
	@if [ ! -f ./srcs/.env ]; then cp ./srcs/.env-example ./srcs/.env; fi

make: setup-env
	docker compose -f ./srcs/docker-compose.yml up --build -d

clean:
	docker compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	docker system prune -a

re : fclean all

.PHONY: all re clean fclean setup-env

all : make

make:
	@if [ ! -f .env ]; then cp .env-example .env; fi
	docker compose -f ./srcs/docker-compose.yml up -d

clean:
	docker compose -f ./srcs/docker-compose.yml down -v

fclean: clean
	docker system prune -a

re : fclean all

.PHONY: all re clean fclean
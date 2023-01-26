COMPOSE_PATH = srcs/docker-compose.yml

all:
	docker compose -f $(COMPOSE_PATH) up

down:
	docker compose -f $(COMPOSE_PATH) down

clean:
	docker compose -f $(COMPOSE_PATH) down
	docker system prune -af

fclean:

	make clean
	rm -rfd /home/sleleu/data/wordpress
	rm -rfd /home/sleleu/data/mariadb
	mkdir /home/sleleu/data/mariadb /home/sleleu/data/wordpress

re:
	make fclean 
	make all
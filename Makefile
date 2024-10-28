
all:
	mkdir -p /home/$(USER)/data/wordpress
	mkdir -p /home/$(USER)/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d

down: 
	docker-compose -f ./srcs/docker-compose.yml down 
	docker-compose -f srcs/docker-compose.yml down --volumes

clean: down
	docker system prune -af
	docker volume rm mariadb wordpress
	sudo rm -rf /home/$(USER)/data/mariadb /home/$(USER)/data/wordpress

fclean: clean

re: clean all
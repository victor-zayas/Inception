
all:
	mkdir -p /home/$(USER)/data/wordpress /home/$(USER)/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d --build

down: 
	docker-compose -f ./srcs/docker-compose.yml down 
	docker-compose -f srcs/docker-compose.yml down --volumes

clean: down
	docker system prune -af
#	docker volume rm mariadb wordpress
#	docker volume prune -f
	sudo rm -rf /home/$(USER)/data/

fclean: clean

re: clean all

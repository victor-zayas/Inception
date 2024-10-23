
.SILENT:

all:
	mkdir -p /home/$(USER)/data/wordpress
	mkdir -p /home/$(USER)/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d

down: 
	docker-compose -f ./srcs/docker-compose.yml down 

clean: down
	docker-compose -f srcs/docker-compose.yml down --volumes

fclean: clean
	docker rmi nginx mariadb wordpress ; yes | docker system prune -af

re: clean all
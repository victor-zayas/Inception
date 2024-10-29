
all:
	mkdir -p /home/$(USER)/data/wordpress /home/$(USER)/data/mariadb
#	mkdir -p /workspaces/data/wordpress /workspaces/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up -d

down: 
	docker-compose -f ./srcs/docker-compose.yml down 
	docker-compose -f srcs/docker-compose.yml down --volumes

clean: down
	docker system prune -af
	docker volume prune -f
	sudo rm -rf /home/$(USER)/data/mariadb /home/$(USER)/data/wordpress
#	sudo rm -rf /workspaces/data/mariadb /workspaces/data/wordpress

fclean: clean

re: clean all

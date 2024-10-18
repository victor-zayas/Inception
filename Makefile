NAME = Inception

.SILENT:

all: $(NAME)

$(NAME):
	mkdir -p ./mtg
	mkdir -p /home/$(USER)/data/wordpress
	mkdir -p /home/$(USER)/data/mariadb
	docker-compose -f srcs/docker-compose.yml build && docker-compose -f srcs/docker-compose.yml up -d

clean:
	docker-compose -f srcs/docker-compose.yml down --volumes

fclean: clean
	docker rmi nginx mariadb wordpress ; yes | docker system prune -a

re: clean all
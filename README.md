# inception
A project to get familiar with docker

## Subject

This project consists in building an architecture composed of containers and volumes in order to build a wordpress site using mariadb as a database, and nginx as a web server.

The following installations must be performed :
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.

Here is an example diagram of the final result provided by the subject :

![Screenshot from 2023-01-30 16-59-21](https://user-images.githubusercontent.com/93100775/215528044-cd99af72-77ff-44ed-b1c3-dd0cc73eb55f.png)

## Installation

```shell
git clone git@github.com:Sleleu/inception.git
cd inception
make
```
It's possible to change the identifiers and characteristics of the site from a .env file, established by default with random identifiers for this project

## Usefull commands

- Basic commands

```shell
docker compose up -d # Build all containers with docker compose, and launch services in background
docker compose down # Desactivate containers
docker build -t <name> <path> # Build a single container with a defined name and path
docker exec -it <name> bash # To navigate in the started container
docker stop <ID> # Stop a container
docker rm <ID> # Remove a container
docker ps -a # See containers
docker volume ls # See volumes
```

- suppression commands

```shell
docker system prune -a # Remove containers, networks, images
docker volume rm $(docker volume ls -q) # Remove volumes
```

## Ressources :

- https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
- https://www.cloudbooklet.com/install-wordpress-with-docker-compose-nginx-apache-with-ssl/
- https://betterprogramming.pub/using-variables-in-docker-compose-265a604c2006
- https://medium.com/edureka/docker-networking-1a7d65e89013
- https://cloud.google.com/architecture/best-practices-for-building-containers
- https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes
- https://www.freecodecamp.org/news/basic-sql-commands/
- https://nginx.org/en/docs/http/configuring_https_servers.html
- https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/

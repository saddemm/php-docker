Simple Php, Nginx, mysql & phpmyadmin Dockerized
========

Make sur to have docker installed on your machine.

## Installation:

build your image:
`docker-compose build`

up your docker containers:
`docker-compose up -d`

`127.0.0.1       simplephp.dev.io` and now you can access with http://simplephp.dev.io

On php image : 

go to console as root:
`docker-compose exec php bash`

go to console as www-data:
`docker-compose exec -u www-data php bash`

On nginx image
`docker-compose exec nginx /bin/sh`


##PhpMyAdmin:

http://localhost:9702

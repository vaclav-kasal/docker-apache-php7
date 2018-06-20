# Apache with php7.2 on Ubuntu 18 LTS

This is a docker images with Ubuntu 18 LTS with apache2 and php7.2

To access site contents from utside the container you should map /var/www

### Examples

- plain, accessable on port 8080 `docker run -d -p 8080:80 vaclavkasal/apache-php7`

The docker container is started with the -d flag so it will run inte the background. To run commands or edit settings inside
the container run `docker exec -ti <container id> /bin/bash'

- docker-compose.yml

Run apache-php7/mysql with docker-compose:

```yml
version: '3.4'

services:
  web:
    image: vaclavkasal/apache-php7
    environment:
      - ALLOW_OVERRIDE=true
    ports:
      - "80:80"
    links:
      - db
    volumes:
      - ./app:/var/www/html
  
  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: yourpassword
      MYSQL_USER: youruser 
      MYSQL_PASSWORD: yourpassword
      MYSQL_DATABASE: yourdb
    volumes:
      - ./mysql:/var/lib/mysql/
```

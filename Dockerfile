FROM ubuntu

MAINTAINER vkasal <vaclav.kasal@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y php libapache2-mod-php  \
	php-fpm php-cli php-pgsql php-sqlite3 php-redis \
	php-apcu php-intl php-imagick php-mcrypt php-json php-gd php-curl
RUN phpenmod mcrypt
RUN rm -rf /var/lib/apt/lists/*


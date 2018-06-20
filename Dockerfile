FROM ubuntu

MAINTAINER vkasal <vaclav.kasal@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y php libapache2-mod-php  \
	php-fpm php-cli php-mysql php-pgsql php-sqlite3 php-redis \
	php-apcu php-intl php-imagick php-json php-gd php-curl php-mbstring

RUN rm -rf /var/lib/apt/lists/*


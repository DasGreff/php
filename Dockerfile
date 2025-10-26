FROM php:8.4-apache-trixie

RUN apt update && \
    apt upgrade -y && \
    apt install -y imagemagick \
    openssh-client && \
    docker-php-ext-install pdo_mysql && \
    groupmod --gid 1000 www-data && \
    usermod --uid 1000 --gid 1000 www-data

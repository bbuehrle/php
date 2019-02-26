FROM php:7.2-apache

RUN apt-get update -yqq && apt-get install -yqq git libpq-dev libcurl4-gnutls-dev libicu-dev libvpx-dev libjpeg-dev libpng-dev libxpm-dev zlib1g-dev libfreetype6-dev libxml2-dev libexpat1-dev libbz2-dev libgmp3-dev libldap2-dev unixodbc-dev libsqlite3-dev libaspell-dev libsnmp-dev libpcre3-dev libtidy-dev libzip-dev unzip

RUN docker-php-ext-install mbstring curl json intl gd xml zip bz2 opcache

RUN pecl install xdebug && docker-php-ext-enable xdebug
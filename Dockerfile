FROM php:latest
RUN apt-get update \
 && apt-get install -y libpq-dev libzip-dev \
 && apt-get clean
RUN docker-php-ext-install pdo_pgsql zip
RUN pecl install xdebug \
 && docker-php-ext-enable xdebug
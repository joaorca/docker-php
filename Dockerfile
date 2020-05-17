FROM php:latest
RUN apt-get update \
 && apt-get install -y libpq-dev \
 && apt-get clean
RUN docker-php-ext-install pdo_pgsql
RUN pecl install xdebug \
 && docker-php-ext-enable xdebug

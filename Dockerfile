FROM php:7-4
RUN apt-get update \
 && apt-get install -y libpq-dev \
 && apt-get clean
RUN docker-php-ext-install pdo_pgsql

FROM php:8.0-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql \
    && addgroup -g 1000 laravel \
    && adduser -G laravel -g laravel -s /bin/sh -D laravel
COPY src .
RUN chown -R www-data:www-data /var/www/html

RUN addgroup laravel www-data
USER laravel
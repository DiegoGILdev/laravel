FROM php:7.4.15-fpm-alpine

RUN docker-php-ext-install pdo_mysql

RUN apk upgrade

RUN apk add $PHPIZE_DEPS
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN apk add composer
RUN apk add nano

WORKDIR /src/api

CMD ["php-fpm"]

EXPOSE 9000

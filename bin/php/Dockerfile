FROM php:7.3.8-fpm-alpine

# Update
RUN apk update
RUN apk upgrade
RUN apk add nano

ADD *.ini /usr/local/etc/php/
ADD checking.sh /
RUN chmod +x /checking.sh

RUN docker-php-ext-install mysqli

COPY *.php /var/www/html/

WORKDIR /usr/local/etc/php
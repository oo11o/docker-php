#FROM php:7.1-fpm
#
#RUN pecl install xdebug && \
#    docker-php-ext-enable xdebug
#
#COPY xdebug/xdebug.ini  /usr/local/etc/php/conf.d/xdebug.ini
#RUN mkdir -p /app

FROM php:7.0-fpm

RUN pecl install xdebug-2.7.2 \
    && docker-php-ext-enable xdebug \


COPY xdebug/xdebug.ini  /usr/local/etc/php/conf.d/xdebug.ini

#RUN mkdir -p /app
#RUN chown -R www-data:www-data /app
#
#USER www-data
#
#WORKDIR /app

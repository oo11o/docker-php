FROM php:8.2-fpm

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug

COPY xdebug/xdebug.ini ${PHP_INI_DIR}/conf.d/docker-php-ext-xdebug.ini

RUN mkdir -p /app
RUN chown -R www-data:www-data /app

USER www-data

WORKDIR /app

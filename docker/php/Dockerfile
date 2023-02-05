# ./docker/php/Dockerfile
FROM php:7.2-fpm

# Compatible with php:7.2-fpm
COPY php.ini-development /usr/local/etc/php/php.ini-development
COPY php.ini-production /usr/local/etc/php/php.ini-production

RUN docker-php-ext-install pdo_mysql

RUN pecl install apcu

RUN apt-get update && \
apt-get install -y \
zlib1g-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-enable apcu

# on télécharge et deplace le composer
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
   mv composer.phar /usr/local/bin/composer


# Enable www-data user
RUN usermod -u 1000 www-data -d /home/www-data --shell /bin/bash && \
    groupmod -g 1000 www-data && \
    mkdir -p /home/www-data && \
    chown www-data:www-data /home/www-data && \
    chown -R www-data:www-data /var/www

WORKDIR /var/www

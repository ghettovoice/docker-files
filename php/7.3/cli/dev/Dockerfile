FROM prooph/php:7.3-cli-xdebug

# Environmental Variables
ENV COMPOSER_HOME /root/composer
ENV COMPOSER_VERSION master
ENV COMPOSER_ALLOW_SUPERUSER 1

COPY etc/xdebug.ini /usr/local/etc/php/conf.d/xdebug-cli.ini

RUN set -xe \
    && apk add --no-cache --virtual .persistent-deps \
        zlib-dev \
        libzip-dev \
        git \
        unzip \
    && docker-php-ext-install \
        zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

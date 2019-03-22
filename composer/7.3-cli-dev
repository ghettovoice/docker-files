FROM ghettovoice/php:7.3-cli-dev

ARG COMPOSER_HOME=/root/composer
ARG COMPOSER_VERSION=master
ARG COMPOSER_ALLOW_SUPERUSER=1

ENV COMPOSER_HOME=$COMPOSER_HOME
ENV COMPOSER_VERSION=$COMPOSER_VERSION
ENV COMPOSER_ALLOW_SUPERUSER=$COMPOSER_ALLOW_SUPERUSER

RUN set -xe \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

# Set up the command arguments
CMD ["-"]
ENTRYPOINT ["composer", "--ansi"]

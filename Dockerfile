FROM php:8.0.12-cli-buster

RUN set -x \
    && apt-get update \
    && apt-get install -y libicu-dev zip unzip rsync openssh-client

RUN docker-php-ext-install intl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -fsSL https://deb.nodesource.com/setup_17.x | bash - \
    && apt-get install -y nodejs

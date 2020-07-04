FROM php:7.4-fpm
RUN set -x
RUN echo "Asia/Tokyo"> /etc/timezone
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt-get update
RUN apt-get -y install libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

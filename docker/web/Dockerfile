FROM php:5.6-apache

RUN apt-get update && \
    apt-get install -y \
    zlib1g-dev \
    libpng-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    libmcrypt-dev \
    git && \
    docker-php-ext-install mbstring pdo_mysql zip gd curl intl mcrypt && \
    curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin && \
    apt-get clean && rm -r /var/lib/apt/lists/*

COPY php.ini /usr/local/etc/php/php.ini
COPY vhost.conf /etc/apache2/sites-enabled/
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN a2enmod rewrite

RUN usermod -u 1000 www-data

RUN chown 1000:1000 /var/www
RUN mkdir -p /var/www/html/app/cache
RUN chown -R 1000:1000 /var/www/html/app/cache
VOLUME ["/var/www/html/app/cache"]

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["apache2-foreground"]

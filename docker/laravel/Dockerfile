FROM php:7.4-fpm
COPY ./src /application
WORKDIR /application

RUN apt-get update && apt-get install -y \
            git \
            zip \
            unzip \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN apt-get update && apt-get install -y \
             git \
             zip \
             unzip \
             && composer install 

RUN php artisan cache:clear \
     && php artisan config:clear \
     && php artisan route:clear \
     && php artisan view:clear
     
RUN chown -R www-data:www-data storage

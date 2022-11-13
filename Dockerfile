FROM php:7.4-apache

WORKDIR /var/www/html

COPY . .

RUN apt update \
    && apt install -y git

RUN curl -sS https://getcomposer.org/installer \
    | php -- --install-dir=/usr/local/bin/ --filename=composer

CMD [ "/var/www/html/entrypoint.sh" ]
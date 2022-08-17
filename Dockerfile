FROM php:7.2-apache
COPY ./public-html/  /var/www/html/
COPY entrypoint.sh /var/www/html/
ENTRYPOINT ["/var/www/html/entrypoint.sh"]
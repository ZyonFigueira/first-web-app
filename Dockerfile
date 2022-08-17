FROM php:7.2-apache
COPY ./public-html/  /var/www/html/
COPY entrypoint.sh /var/www/html/
RUN chmod +x /var/www/html/entrypoint.sh
ENTRYPOINT ["sh", "/var/www/html/entrypoint.sh"]
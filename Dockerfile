FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
COPY ./public-html/  /var/www/html/
COPY entrypoint.sh /var/www/html/
RUN chmod +x /var/www/html/entrypoint.sh
EXPOSE 80

ENTRYPOINT ["sh", "/var/www/html/entrypoint.sh"]
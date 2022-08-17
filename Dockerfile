FROM httpd:2.4
RUN apt install -y php
COPY ./public-html/ /usr/local/apache2/htdocs/
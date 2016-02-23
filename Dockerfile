FROM xhttpdev/docker-php:latest

ADD app.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default

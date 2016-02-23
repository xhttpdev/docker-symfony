FROM xhttpdev/docker-php:5.6

ADD app.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default

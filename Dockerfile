FROM xhttpdev/docker-php

ADD app.conf /etc/apache2/sites-available/000-default.conf

RUN a2ensite 000-default

WORKDIR /

# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html

ADD launch.sh /launch

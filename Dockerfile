FROM xhttpdev/docker-php

RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ALL/" /etc/php5/apache2/php.ini

ADD app.conf /etc/apache2/sites-available/000-default.conf

RUN a2ensite 000-default

# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

ADD launch.sh /launch

FROM xhttpdev/docker-php

ADD app.conf /etc/apache2/sites-available/000-default.conf

RUN a2ensite 000-default

WORKDIR /

# npm
RUN mkdir /nodejs
RUN curl -Lks http://nodejs.org/dist/v0.12.4/node-v0.12.4-linux-x64.tar.gz -o /nodejs.tar.gz
RUN tar zxf /nodejs.tar.gz --strip=1 -C /nodejs
RUN ln -s /nodejs/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm
RUN ln -s /nodejs/bin/node /usr/local/bin/

# bower
RUN npm install -g bower

# grunt
RUN npm install -g grunt-cli

# composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www

USER www-data

ADD launch.sh /launch

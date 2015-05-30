#!/bin/bash -e

chown -R www-data:www-data .

composer install
npm install
bower update --allow-root
grunt

/usr/sbin/apache2 -D FOREGROUND

#!/bin/bash -e

chown -R www-data:www-data .

composer install
npm install
bower update
grunt

/usr/sbin/apache2 -D FOREGROUND

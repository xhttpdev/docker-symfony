#!/bin/bash -e

composer install
npm install
bower update

chown -R www-data:www-data .

/usr/sbin/apache2 -D FOREGROUND

#!/bin/bash -e

chown -R www-data:www-data .
composer install

/usr/sbin/apache2 -D FOREGROUND

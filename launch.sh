#!/bin/bash -e

composer install

chown -R www-data:www-data .

/usr/sbin/apache2 -D FOREGROUND

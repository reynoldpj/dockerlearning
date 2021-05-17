#!/bin/bash
/etc/init.d/nginx start
/usr/local/bin/gunicorn --chdir /var/www -w 10 -u www-data -g www-data -p /var/www/gunicorn.pid falcontest:app

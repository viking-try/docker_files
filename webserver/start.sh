#!/bin/bash 
# start ssh 
/usr/sbin/sshd
#start php in background 

/usr/sbin/php-fpm -c /etc/php/fpm

#start nginx daemon

nginx -g 'daemon off;'



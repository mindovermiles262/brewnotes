#!/bin/bash

# Generates 64-character alphanumberic string then adds
# it as $wgSecretKey in /var/www/html/LocalSettings.php
#
# AD 2018-11-09

SECRET=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 64 | head -n 1)

EXPORT_STR="\$wgSecretKey = \"$SECRET\";"

echo $EXPORT_STR >> /var/www/html/LocalSettings.php

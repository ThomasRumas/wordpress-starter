#!/bin/bash
set -e; 

if [ -z "$(ls -A /var/www/html)" ]; then
   echo "Folder is empty"; 
   echo "Get the source from git repository on specific branch : $branch"; 
   git clone -b $branch https://github.com/WordPress/WordPress.git /var/www/html; 
fi
apachectl -DFOREGROUND;  
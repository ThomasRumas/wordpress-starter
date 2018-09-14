FROM php:7.2-apache

ENV branch=master

RUN apt update
RUN apt install git dos2unix -y 

WORKDIR /var/www/html

COPY entrypoint.sh /
RUN dos2unix /entrypoint.sh
RUN chmod u+x /entrypoint.sh

EXPOSE 80
VOLUME [ "/var/www/html" ]

ENTRYPOINT [ "sh","/entrypoint.sh" ]

FROM php:7.2-apache

RUN apt update && \
    apt install -y texlive-full pandoc wget

RUN mkdir -p ~/.pandoc/templates
COPY template/ ~/.pandoc/templates

COPY src/ /var/www/html/

EXPOSE 80

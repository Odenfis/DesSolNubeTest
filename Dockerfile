# Usa una imagen base de PHP
FROM php:8.1-apache

# Instala las extensiones de PostgreSQL
RUN docker-php-ext-install pdo pdo_pgsql pgsql

# Copia el contenido de tu aplicación al contenedor
COPY . /var/www/html/

# Expone el puerto 80
EXPOSE 80
FROM wordpress:6.5-php8.2-apache

# Enable Apache rewrite for permalinks
RUN a2enmod rewrite

# MySQL support
RUN docker-php-ext-install mysqli

# Proper permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

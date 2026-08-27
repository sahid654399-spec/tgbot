FROM php:8.2-apache

COPY bot.php /var/www/html/bot.php

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && printf 'DirectoryIndex bot.php index.php index.html\n' > /etc/apache2/mods-enabled/dir.conf \
    && chown www-data:www-data /var/www/html/bot.php

EXPOSE 80

CMD ["apache2-foreground"]

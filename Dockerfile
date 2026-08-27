FROM php:8.2-apache

COPY bot.php /var/www/html/bot.php

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && sed -i 's/DirectoryIndex .*/DirectoryIndex bot.php/' /etc/apache2/mods-enabled/dir.conf \
    && chown www-data:www-data /var/www/html/bot.php

EXPOSE 80

CMD ["apache2-foreground"]

FROM php:8.2-apache

COPY bot.php /var/www/html/bot.php

RUN chown www-data:www-data /var/www/html/bot.php

EXPOSE 80

CMD ["apache2-foreground"]

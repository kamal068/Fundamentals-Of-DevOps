# Use an official PHP runtime as a parent image
FROM php:7.4-cli

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the PHP file into the container
COPY weather.php /var/www/html/index.php

CMD "/bin/sh -c a2enmod rewrite"

# Specify the command to run on container start
CMD ["php", "-S", "0.0.0.0:80", "-t", "."]


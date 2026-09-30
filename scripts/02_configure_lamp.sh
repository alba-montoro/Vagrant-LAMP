#!/usr/bin/env bash
# scripts/02_configure_lamp.sh
# Configure LAMP stack services and test page
set -xeu
# ERROR 1: Separar chown y chmod en l¡neas distintas o con punto y coma
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# ERROR 2: Usar la ruta de Vagrant (/vagrant/files/...) y el nombre info.php
cp -vf /vagrant/files/info.php /var/www/html/info.php
systemctl enable --now apache2
systemctl enable --now mariadb
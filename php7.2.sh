#!/bin/bash

# Based on this script, we can install PHP 7.2 in the system
# Here, we will install all the packages for PHP 7.2 in the system.
# Install php7.2 in the linux (Ubuntu 18 or 19)

apt update -y

apt install apt-transport-https lsb-release ca-certificates -y
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list


apt update -y


apt install libapache2-mod-php7.2 -y
apt install libapache2-mod-php7.2-dbgsym -y
apt install libphp7.2-embed -y
apt install libphp7.2-embed-dbgsym -y
apt install php7.2 -y
apt install php7.2-bcmath -y
apt install php7.2-bcmath-dbgsym -y
apt install php7.2-bz2 -y
apt install php7.2-bz2-dbgsym -y
apt install php7.2-cgi -y
apt install php7.2-cgi-dbgsym -y
apt install php7.2-cli -y
apt install php7.2-cli-dbgsym -y
apt install php7.2-common -y
apt install php7.2-common-dbgsym -y
apt install php7.2-curl -y
apt install php7.2-curl-dbgsym -y
apt install php7.2-dba -y
apt install php7.2-dba-dbgsym -y
apt install php7.2-dev -y
apt install php7.2-enchant -y
apt install php7.2-enchant-dbgsym -y
apt install php7.2-fpm -y
apt install php7.2-fpm-dbgsym -y
apt install php7.2-gd -y
apt install php7.2-gd-dbgsym -y
apt install php7.2-gmp -y
apt install php7.2-gmp-dbgsym -y
apt install php7.2-imap -y
apt install php7.2-imap-dbgsym -y
apt install php7.2-interbase -y
apt install php7.2-interbase-dbgsym -y
apt install php7.2-intl -y
apt install php7.2-intl-dbgsym -y
apt install php7.2-json -y
apt install php7.2-json-dbgsym -y
apt install php7.2-ldap -y
apt install php7.2-ldap-dbgsym -y
apt install php7.2-mbstring -y
apt install php7.2-mbstring-dbgsym -y
apt install php7.2-mysql -y
apt install php7.2-mysql-dbgsym -y
apt install php7.2-odbc -y
apt install php7.2-odbc-dbgsym -y
apt install php7.2-opcache -y
apt install php7.2-opcache-dbgsym -y
apt install php7.2-pgsql -y
apt install php7.2-pgsql-dbgsym -y
apt install php7.2-phpdbg -y
apt install php7.2-phpdbg-dbgsym -y
apt install php7.2-pspell -y
apt install php7.2-pspell-dbgsym -y
apt install php7.2-readline -y
apt install php7.2-readline-dbgsym -y
apt install php7.2-recode -y
apt install php7.2-recode-dbgsym -y
apt install php7.2-snmp -y
apt install php7.2-snmp-dbgsym -y
apt install php7.2-soap -y
apt install php7.2-soap-dbgsym -y
apt install php7.2-sqlite3 -y
apt install php7.2-sqlite3-dbgsym -y
apt install php7.2-sybase-dbgsym -y
apt install php7.2-tidy -y
apt install php7.2-tidy-dbgsym -y
apt install php7.2-xml -y
apt install php7.2-xml-dbgsym -y
apt install php7.2-xmlrpc -y
apt install php7.2-xmlrpc-dbgsym -y
apt install php7.2-xsl -y
apt install php7.2-zip -y
apt install php7.2-zip-dbgsym -y
apt install curl -y
apt install git -y

cd /etc/php/7.2/apache2
cp php.ini php.ini.bak

sed -i 's,^file_uploads =.*$,file_uploads = On,' php.ini
sed -i 's,^allow_url_fopen =.*$,allow_url_fopen = On,' php.ini
sed -i 's,^short_open_tag =.*$,short_open_tag = On,' php.ini
sed -i 's,^memory_limit =.*$,memory_limit = 2G,' php.ini
sed -i 's,^upload_max_filesize =.*$,upload_max_filesize = 100M,' php.ini
sed -i 's,^max_execution_time =.*$,max_execution_time = 360,' php.ini
sed -i 's,^date.timezone =.*$,date.timezone = America/Chicago,' php.ini

echo ""
echo ""
echo ""
echo ""
echo ""

grep '^file_uploads ' php.ini
grep '^allow_url_fopen ' php.ini
grep '^short_open_tag ' php.ini
grep '^memory_limit ' php.ini
grep '^upload_max_filesize ' php.ini
grep '^max_execution_time ' php.ini
grep '^date.timezone ' php.ini

echo ""
echo ""
echo ""
echo ""
echo ""


# crate a PHPINFO file in the Root DIR
# ---------------------------------------------------
FILEPATH=/var/www/html/phpinfo.php
echo "<?php
// Show all information, defaults to INFO_ALL
phpinfo();
?>" >> $FILEPATH
# ---------------------------------------------------

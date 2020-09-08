#!/bin/bash

# Based on this script, we can install PHP 7.3 in the system
# Here, we will install all the packages for PHP 7.3 in the system.
# Install php7.3 in the linux (Ubuntu 18 or 19)


apt update -y
apt get-update -y
apt install openssh-server -y

apt install software-properties-common -y
add-apt-repository ppa:ondrej/php

apt update -y
apt get-update -y

# for git and composer
apt install git -y
apt install composer -y


# for php 7.3 
apt install libapache2-mod-php7.3 -y
apt install libapache2-mod-php7.3-dbgsym -y
apt install libphp7.3-embed -y
apt install libphp7.3-embed-dbgsym -y 
apt install php7.3 -y
apt install php7.3-bcmath -y 
apt install php7.3-bcmath-dbgsym -y 
apt install php7.3-bz2 -y
apt install php7.3-bz2-dbgsym -y
apt install php7.3-cgi -y
apt install php7.3-cgi-dbgsym -y
apt install php7.3-cli -y
apt install php7.3-cli-dbgsym -y
apt install php7.3-common -y
apt install php7.3-common-dbgsym -y
apt install php7.3-curl -y
apt install php7.3-curl-dbgsym -y
apt install php7.3-dba -y
apt install php7.3-dba-dbgsym -y
apt install php7.3-dev -y
apt install php7.3-enchant -y
apt install php7.3-enchant-dbgsym -y
apt install php7.3-fpm -y
apt install php7.3-fpm-dbgsym -y 
apt install php7.3-gd -y
apt install php7.3-gd-dbgsym -y 
apt install php7.3-gmp -y
apt install php7.3-gmp-dbgsym -y 
apt install php7.3-imap -y
apt install php7.3-imap-dbgsym -y 
apt install php7.3-interbase -y
apt install php7.3-interbase-dbgsym -y 
apt install php7.3-intl -y
apt install php7.3-intl-dbgsym -y 
apt install php7.3-json -y
apt install php7.3-json-dbgsym -y 
apt install php7.3-ldap -y
apt install php7.3-ldap-dbgsym -y 
apt install php7.3-mbstring -y
apt install php7.3-mbstring-dbgsym -y 
apt install php7.3-mysql -y
apt install php7.3-mysql-dbgsym -y
apt install php7.3-odbc -y
apt install php7.3-odbc-dbgsym -y
apt install php7.3-opcache -y
apt install php7.3-opcache-dbgsym -y
apt install php7.3-pgsql -y
apt install php7.3-pgsql-dbgsym -y 
apt install php7.3-phpdbg -y
apt install php7.3-phpdbg-dbgsym -y 
apt install php7.3-pspell -y
apt install php7.3-pspell-dbgsym -y 
apt install php7.3-readline -y
apt install php7.3-readline-dbgsym -y 
apt install php7.3-recode -y
apt install php7.3-recode-dbgsym -y 
apt install php7.3-snmp -y
apt install php7.3-snmp-dbgsym -y 
apt install php7.3-soap -y
apt install php7.3-soap-dbgsym -y 
apt install php7.3-sqlite3 -y
apt install php7.3-sqlite3-dbgsym -y
apt install php7.3-sybase -y
apt install php7.3-sybase-dbgsym -y 
apt install php7.3-tidy -y
apt install php7.3-tidy-dbgsym -y 
apt install php7.3-xml -y
apt install php7.3-xml-dbgsym -y 
apt install php7.3-xmlrpc -y
apt install php7.3-xmlrpc-dbgsym -y 
apt install php7.3-xsl -y
apt install php7.3-zip -y
apt install php7.3-zip-dbgsym -y

cd /etc/php/7.3/apache2
cp php.ini php.ini.bak

sed -i 's,^file_uploads =.*$,file_uploads = On,' php.ini
sed -i 's,^allow_url_fopen =.*$,allow_url_fopen = On,' php.ini
sed -i 's,^short_open_tag =.*$,short_open_tag = On,' php.ini
sed -i 's,^memory_limit =.*$,memory_limit = 10G,' php.ini
sed -i 's,^upload_max_filesize =.*$,upload_max_filesize = 1000M,' php.ini
sed -i 's,^max_execution_time =.*$,max_execution_time = 18000,' php.ini
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

#!/bin/bash

# Install MariaDB in the Linux (Ubuntu 18 or 19)

apt update -y
apt-get update -y

apt install mariadb-server -y
apt install mariadb-client -y

systemctl start mariadb.service
systemctl enable mariadb.service
systemctl stop mariadb.service
systemctl restart mariadb.service
systemctl enable mariadb.service

mysql_secure_installation


clear
echo ""
echo ""
echo ""
echo "***************************************************************************"
echo "         Please complete the configuration in the database: ----           "
echo "***************************************************************************"
echo ""
echo "Enter the database root password: ----"
echo ""
read PASSWORD
echo ""

# To create an new user id and password in the database
echo ""
echo "Enter the new user id: ----"
echo ""
read CREATE_USER_NAME
echo ""
echo ""
echo "Enter the new user password: ----"
echo ""
read USER_PASSWORD
echo ""
echo ""
mysql -u USER -p$PASSWORD -e "CREATE USER '$CREATE_USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASSWORD';"
mysql -u USER -p$PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO '$CREATE_USER_NAME'@'localhost' IDENTIFIED BY '$USER_PASSWORD';"


echo ""
echo "Please Enter the database name: ----"
echo ""
read DB
mysql -u USER -p$PASSWORD -e "CREATE DATABASE $DB;"

echo "---------------------------------------------"
echo ""
echo ""
echo "       MariaDB installation has finished"
echo ""
echo ""
echo "---------------------------------------------"
echo ""
echo ""
echo ""
echo ""

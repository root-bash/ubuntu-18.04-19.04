#!/bin/bash

# Install MySql in the Linux (Ubuntu 18 or 19)

apt update -y
apt-get update -y

apt install mysql-server -y
apt install mysql-client -y

systemctl start mysql.service
systemctl enable mysql.service
systemctl stop mysql.service
systemctl restart mysql.service
systemctl enable mysql.service

mysql_secure_installation

echo ""
echo "Enter the mysql user password: ----"
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
echo "       MySql installation has finished"
echo ""
echo ""
echo "---------------------------------------------"
echo ""
echo ""
echo ""
echo ""

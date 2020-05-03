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



echo "---------------------------------------------"
echo ""
echo ""
echo "       MySql installation has finished"
echo ""
echo ""
echo "---------------------------------------------"

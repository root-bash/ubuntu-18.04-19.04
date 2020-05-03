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

echo "---------------------------------------------"
echo ""
echo ""
echo "       MariaDB installation has finished"
echo ""
echo ""
echo "---------------------------------------------"

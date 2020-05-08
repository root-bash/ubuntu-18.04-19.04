#!/bin/bash

# Here, we will create a menu for installation all the service in the system.
# Each and every menu will download the script from the server and run in the machine.

chmod -R 777 dns.sh
clear
chmod -R 777 apache2.sh
clear
chmod -R 777 php7.2.sh
clear
chmod -R 777 php7.3.sh
clear
chmod -R 777 mysql.sh
clear
chmod -R 777 mariadb.sh
clear
echo "#############################################################"
echo ""
echo "              Please select the service......"
echo ""
echo "#############################################################"

options=("DNS Service" "Web Service" "PHP 7.2" "PHP 7.3" "Database Service (MySql)" "Database Service (MariaDB)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "DNS Service")
        	  echo "#############################################################"
            echo "       DNS Service is going to install in the server     "
            echo "#############################################################"      
            ./dns.sh
            ;;
        "Web Service")
        	  echo "#############################################################"
            echo "       WEB Service is going to install in the server     "
            echo "#############################################################"
            ./apache2.sh
            ;;
        "PHP 7.2")
            echo "#############################################################"
            echo "       PHP 7.2 Service is going to install in the server     "
            echo "#############################################################" 
            ./php7.2.sh
            ;;
        "PHP 7.3")
            echo "#############################################################"
            echo "       PHP 7.3 Service is going to install in the server     "
            echo "#############################################################" 
            ./php7.3.sh
            ;;
        "Database Service (MySql)")
            echo "#############################################################"
            echo "       MySql Service is going to install in the server   "
            echo "#############################################################"
            ./mysql.sh
            ;;
        "Database Service (MariaDB)")
            echo "#############################################################"
            echo "       MariaDB Service is going to install in the server     "
            echo "#############################################################" 
            ./mariadb.sh
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

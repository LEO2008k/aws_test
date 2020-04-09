#!/bin/bash
yum -y update
yum -y install mc vim net-tools httpd 
echo "---------start httpd and add html page -------------"
echo "<html><body bgcolor=black><center><h1><p><font color=red> Levko  web server</h1></center></body></html>" > /var/www/html/index.html
echo "UserData executed on $(date)" >>/var/log/www/log.txt
systemctl enable --now httpd
echo "_________finish______________"
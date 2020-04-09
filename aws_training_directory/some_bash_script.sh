#!/bin/bash
yum -y update
yum -y install mc vim net-tools httpd 
echo "---------start httpd and add html page -------------"
echo "<html><body bgcolor=black><center><h1><p><font color=red> Levko  web server</h1></center></body></html>" > /var/www/html/index.html
systemctl enable --now httpd
echo "UserData executed on $(date)" >>/var/www/html/log.txt
#privateip=`curl http://169.254169.254/latest/meta-data/local-ipv4`
echo "_________finish______________"
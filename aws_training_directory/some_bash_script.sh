#!/bin/bash
yum -y update
yum -y install mc vim net-tools httpd 
echo "---------start httpd and add html page -------------"
privateip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<html><body bgcolor=black><center><h1><p><font color=red> Levko  web server with private ip $privateip</h1></center></body></html>" > /var/www/html/index.html
systemctl enable --now httpd
echo "UserData executed on $(date)" >>/var/www/html/log.txt
echo "_________finish______________"
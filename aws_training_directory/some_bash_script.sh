#!/bin/bash
yum -y update
yum -y install mc vim net-tools httpd 
echo "---------start httpd and add html page -------------"
echo "<html><body bgcolor=black><center><h1><p><font color=red>Levko`s  web server"</h1></body></htnl>" > /var/www/html/index.html
systemctl enable --now httpd
echo "UserData executed on $(date)" >> /var/log/httpd/install_log_httpd.txt
echo "_________finish______________"
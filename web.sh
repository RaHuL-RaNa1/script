#!/bin/bash

sudo yum install httpd unzip wget -y
sudo systemctl enable --now httpd

sudo mkdir -p /var/lib/jenkins/workspace/prac/abc
sudo cd //var/lib/jenkins/workspace/prac/abc
sudo rm -rf *
# Download and unzip the file
sudo wget $LINK
sudo unzip *.zip
sudo rm -rf *.zip

sudo rm -rf /var/www/html
sudo mkdir -p $new_dir
mkdir html
sudo mv * html
sudo mv html $new_dir/


 
 # create the configuration file
 cd /etc/httpd/conf.d/
 echo "Listen $new_port
 <virtualhost *:$new_port>
 documentroot $new_dir
 servername $IP
 </virtualhost>

 <Directory "$new_dir">
     AllowOverride None
     Require all granted
 </Directory>"  >rahul.conf
# Restart Apache to apply the changes
sudo systemctl restart httpd
sudo systemctl enable --now httpd


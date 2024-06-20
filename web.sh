#!/bin/bash

sudo yum install httpd unzip wget -y
sudo systemctl enable --now httpd

sudo mkdir -p /var/lib/jenkins/workspace/prac/abc
sudo cd /var/lib/jenkins/workspace/prac/abc
sudo rm -rf *
# Download and unzip the file
sudo wget $LINK
sudo unzip *.zip
sudo rm -rf *.zip

sudo rm -rf /var/www/html

 # create the configuration file

# Restart Apache to apply the changes
sudo systemctl restart httpd
sudo systemctl enable --now httpd


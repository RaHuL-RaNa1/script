#!/bin/bash


sudo yum install httpd unzip wget -y
sudo systemctl enable --now httpd

sudo wget $LINK
sudo unzip *.zip
sudo rm -rf *.zip
sudo mv * html

sudo rm -rf /var/www/html
sudo mv html /var/www/

sudo systemctl restart httpd
sudo systemctl enable --now httpd


#!/bin/bash
echo "hello $TEST"
wget $TEST

sudo yum install httpd wget unzip -y
sudo systemctl enable --now httpd

unzip *.zip
rm -rf *.zip
sudo rm -rf /var/www/html
sudo mv * html
sudo mv html /var/www/


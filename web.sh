#!/bin/bash
echo "hello $TEST"


sudo yum install httpd wget unzip -y
sudo systemctl enable --now httpd
sudo mkdir /var/lib/jenkins/workspace/jenkins1/abc
cd abc
wget $TEST
unzip *.zip
rm -rf *.zip
sudo rm -rf /var/www/html
sudo mkdir html
sudo mv * html
sudo mv html /var/www/


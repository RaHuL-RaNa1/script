#!/bin/bash


yum install httpd unzip wget -y
systemctl enable --now httpd

wget $LINK
unzip *.zip
rm -rf *.zip
mv * html

rm -rf /var/www/html
mv html /var/www/

systemctl restart httpd
systemctl enable --now httpd


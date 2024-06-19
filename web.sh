#!/bin/bash


yum install httpd unzip wget -y
systemctl enable --now httpd
mkdir -p /home/script
cd /home/script
wget $LINK
unzip *
rm -rf *.zip
mkdir $new_dir
mv * $new_dir

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

systemctl restart httpd
awk '/Listen/{print}' /etc/httpd/conf.d/rahul.conf

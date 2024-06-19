#!/bin/bash


yum install httpd unzip wget -y
systemctl enable --now httpd

# Directory bnali
mkdir -p /home/script
cd /home/script
rm -rf *
# Download and unzip the file

wget $LINK
unzip *.zip
rm -rf *.zip
mkdir -p $new_dir
# Move the contents to the specified directory
mv * html
cd html
mv * $new_dir/
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

systemctl restart httpd
systemctl enable --now httpd

awk '/Listen/{print}' /etc/httpd/conf.d/rahul.conf

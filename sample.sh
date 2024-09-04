#!/bin/bash

yum update -y
yum install httpd git -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
git clone https://github.com/pranaypj103/terraform_practice.git .
chmod 777 /var/www/html/index.html
systemctl restart httpd

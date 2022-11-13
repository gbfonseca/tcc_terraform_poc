#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo '<h1>Bem-vindo a application_1 criada no projeto de TCC <h2>' >> /var/www/html/index.html

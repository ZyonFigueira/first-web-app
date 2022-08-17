HOSTNAME=$(hostname)
sed -i "s/Hostname/$HOSTNAME/g" /var/www/html/index.html
service httpd restart
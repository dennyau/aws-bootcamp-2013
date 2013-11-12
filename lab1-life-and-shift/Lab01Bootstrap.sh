yum -y install httpd php php-xml php-mysql mysql mysql-server mysql-devel mysql-libs
cd /var/www/html
wget https://s3.amazonaws.com/bootcamp03/public/wordpress-3.6.1.zip
chmod 777 wordpress-3.6.1.zip
unzip wordpress-3.6.1.zip
cd /tmp
wget https://s3.amazonaws.com/bootcamp03/public/setup.mysql
chmod 664 setup.mysql
cd /var/www/html/wordpress
wget https://s3.amazonaws.com/bootcamp03/public/wp-config.php
chmod 664 wp-config.php
service httpd start
service mysqld start
mysqladmin -u root password 'reInvent'
mysql -u root --password='reInvent' < /tmp/setup.mysql
cd /var/www/html/wordpress/wp-content/plugins
wget https://s3.amazonaws.com/bootcamp03/public/wordpress-importer.0.6.1.zip 
chmod 777 wordpress-importer.0.6.1.zip
unzip wordpress-importer.0.6.1.zip
chown -R apache:apache /var/www/html/wordpress

#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v /c/Users/chery/OneDrive/Documents/SSD/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
sleep 1
docker exec my-apache-php-app chmod -R 755 /var/www/html
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
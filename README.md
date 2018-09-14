# How to use this docker template

`docker run -p 8080:80 -v ${pwd}:/var/www/html --link mysql-instance:mysql -e branch=master wordpress`
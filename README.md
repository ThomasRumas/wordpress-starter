# How to use this docker template

`docker build --tag wordpress .`

`docker run -p 8080:80 -v ${pwd}:/var/www/html --link mysql-instance:mysql -e branch=master wordpress`

# If you don't have a mysql instance launched 

`docker run --name mysql-instance -e MYSQL_ROOT_PASSWORD=toto -d -p 3306:3306 mysql:latest`

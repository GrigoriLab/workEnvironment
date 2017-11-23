sudo apt install -y docker.io
sudo docker pull mysql
sudo docker run --name mysql_server -e MYSQL_ROOT_PASSWORD=abc123 -d mysql:latest
sudo docker pull wordpress
sudo docker run --name ealocal --link mysql_server:mysql -p 8080:80 -d wordpress

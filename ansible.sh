sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y
sudo apt install ansible -y

sudo apt update -y
sudo apt install \
   apt-transport-https -y \
   ca-certificates -y \
   curl -y \
   gnupg -y \
   lsb-release -y

sudo hostnamectl set-hostname docker

sudo mkdir /home/ubuntu/joomla
sudo cp /home/ubuntu/Dockerfile /home/ubuntu/joomla/

sudo ansible-playbook /home/ubuntu/play.yaml

docker image ls

docker network create --driver bridge joomla-bridge

docker run -d --network joomla-bridge --name mysql -e MYSQL_DATABASE=joomla -e MYSQL_USER=admin -e MYSQL_PASSWORD=password -e MYSQL_ROOT_PASSWORD=password mysql:5.7

docker ps

docker run -d --network joomla-bridge -p 80:80 joomla:v1

docker ps





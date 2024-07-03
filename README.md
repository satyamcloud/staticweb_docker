sudo apt update

sudo apt upgrade

sudo apt install docker.io

sudo systemctl start docker

sudo systemctl enable docker
   
sudo usermod -aG docker ubuntu
           
docker build -t staticweb .

docker run -d -p 80:80 staticweb

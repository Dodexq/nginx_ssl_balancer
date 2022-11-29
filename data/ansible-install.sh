sudo apt upgrade -y
sudo apt install ansible -y
sudo apt install sshpass -y
ssh-keygen -t rsa -N '' -b 2048 -f /home/vagrant/.ssh/host03 -q -C vagrant@ansible-server
sudo chown vagrant /home/vagrant/.ssh/host03
cp /home/vagrant/.ssh/host03.pub /vagrant/data/host03.pub
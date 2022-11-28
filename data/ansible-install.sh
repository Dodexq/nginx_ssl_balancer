sudo apt upgrade -y
sudo apt install ansible -y
sudo apt install sshpass -y
yes | ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/host03 -q -N ""
cp /home/vagrant/.ssh/host03.pub /vagrant/data/host03.pub
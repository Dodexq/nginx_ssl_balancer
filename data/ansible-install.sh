sudo apt upgrade -y
sudo apt install ansible -y
sudo apt install sshpass -y
yes "y" | ssh-keygen -t rsa -N '' -f /home/vagrant/.ssh/host03 -b 2048
cp /home/vagrant/.ssh/host03.pub /vagrant/data/host03.pub
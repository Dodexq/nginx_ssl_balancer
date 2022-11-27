printf "\n" >> /home/vagrant/.ssh/authorized_keys
cat /vagrant/data/host03.pub >> /home/vagrant/.ssh/authorized_keys
rm /vagrant/data/host03.pub
sudo apt install certbot python3-certbot-nginx
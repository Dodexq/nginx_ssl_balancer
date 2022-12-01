cat /vagrant/data/host03.pub | tee -a /home/vagrant/.ssh/authorized_keys
rm /vagrant/data/host03.pub
sudo apt install certbot python3-certbot-nginx -

#nginx
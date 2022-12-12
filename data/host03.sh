sudo apt update -y
cat /vagrant/data/host03.pub | tee -a /home/vagrant/.ssh/authorized_keys
rm /vagrant/data/host03.pub


#sudo cp /vagrant/data/etc/nginx/sites-available/dodextest.ddns.net /etc/nginx/sites-available/
#sudo ln -s /etc/nginx/sites-available/dodextest.ddns.net /etc/nginx/sites-enabled/dodextest.ddns.net
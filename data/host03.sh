cat /vagrant/data/host03.pub | tee -a /home/vagrant/.ssh/authorized_keys
rm /vagrant/data/host03.pub
sudo apt install certbot python3-certbot-nginx -
sudo cp /vagrant/data/etc/nginx/sites-available/dodextest.ddns.net /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/dodextest.ddns.net /etc/nginx/sites-enabled/dodextest.ddns.net


##nginx certbot
#certbot --nginx -d dodextest.ddns.net --email dodexpwnz@gmail.com
#sudo cp -rf /vagrant/data/etc/letsencrypt/* /etc/letsencrypt/
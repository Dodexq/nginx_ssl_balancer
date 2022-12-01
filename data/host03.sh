cat /vagrant/data/host03.pub | tee -a /home/vagrant/.ssh/authorized_keys
rm /vagrant/data/host03.pub
sudo apt install certbot python3-certbot-nginx -

##nginx certbot
#certbot --nginx -d dodextest.ddns.net --email dodexpwnz@gmail.com --http-01-port=81
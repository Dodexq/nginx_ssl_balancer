sudo apt upgrade -y
sudo apt install ansible sshpass nginx certbot python3-certbot-nginx -y
ssh-keygen -t rsa -N '' -b 2048 -f /home/vagrant/.ssh/host03 -q -C vagrant@ansible-server
sudo chown vagrant /home/vagrant/.ssh/host03
cp /home/vagrant/.ssh/host03.pub /vagrant/data/host03.pub


#certbot run -n --nginx --agree-tos -d {{ cert_domain }} -m {{ cert_email }} -redirect
#sudo cp /vagrant/data/etc/main/nginx/sites-available/dodextest.ddns.net /etc/nginx/site-available/
#sudo ln -s /etc/nginx/sites-available/dodextest.ddns.net /etc/nginx/sites-enabled/dodextest.ddns.net
#sudo rm /etc/nginx/site-enabled/default
#sudo systemctl reload nginx
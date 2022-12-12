sudo apt update -y
sudo useradd -m -p $(perl -e 'print crypt($ARGV[0], "password")' 'pass') -s /usr/bin/bash ansible
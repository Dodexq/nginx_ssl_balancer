## Создание SSL балансировщика на Nginx
#
* Vagrantfiles на 4 VM. К каждой VM - vm.provision `data/provision`
    - "forwarded_port", guest: 80, host: 8080
    - "forwarded_port", guest: 443, host: 8043
#

* Автоматизация и раскатка - Ansible. Применен ansible-roles, variables, templates.
    - `ansible/roles/certbot-init/` - provision_certbot.yml
    - `ansible/roles/hosts-init/` - provision_hosts.yml

* Variables hosts - `/hosts_vars` применен различный способ inventory включая SSH Public Key

* Variables DNS name:
    -  `ansible/roles/certbot-init/defaults/main.yml`

#
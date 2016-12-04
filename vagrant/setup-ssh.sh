#!/bin/bash
sudo cp /srv/1533Coalition/deploy_config/sshd_config /etc/ssh/sshd_config
sudo cp /srv/1533Coalition/vagrant/deploy_key /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa
cat /srv/1533Coalition/vagrant/append_authorized_keys > /home/vagrant/.ssh/authorized_keys
sudo cp /srv/1533Coalition/deploy_config/sshd_config /etc/ssh/sshd_config
sudo service ssh restart

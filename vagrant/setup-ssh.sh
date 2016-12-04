#!/bin/bash
sudo cp /srv/PigLatin/deploy_config/sshd_config /etc/ssh/sshd_config
sudo cp /srv/PigLatin/vagrant/deploy_key /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa
cat /srv/PigLatin/vagrant/append_authorized_keys > /home/vagrant/.ssh/authorized_keys
sudo cp /srv/PigLatin/deploy_config/sshd_config /etc/ssh/sshd_config
sudo service ssh restart

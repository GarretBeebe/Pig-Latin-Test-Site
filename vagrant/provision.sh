#!/bin/bash

# install chef client
curl -s https://www.opscode.com/chef/install.sh | sudo bash

# use apt key and install package dependencies
sudo apt-key add /srv/1533Coalition/vagrant/key1
sudo apt-get update
sudo apt-get install -y nginx git-core curl build-essential openssl libreadline6 libreadline6-dev zlib1g \
  zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev \
  automake libtool bison ssl-cert pkg-config libgdbm-dev libffi-dev git-core curl libreadline-dev libxslt1-dev \
  libcurl4-openssl-dev python-software-properties libpq-dev libaio-dev ruby2.0-dev graphviz

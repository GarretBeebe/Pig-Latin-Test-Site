#!/bin/bash
sudo apt-get install -y nodejs npm libfontconfig
sudo ln -s "$(which nodejs)" /usr/bin/node
sudo npm install -g jasmine-core karma karma-jasmine karma-phantomjs-launcher

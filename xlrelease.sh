#!/bin/bash

version=4.8.1

sudo apt-get update
sudo apt-get install -y openjdk-8-jre-headless unzip wget --no-install-recommends

sudo mkdir -p /opt/xebialabs/xl-release
#cp /vagrant/xl-release-4.8.1-server.zip /home/vagrant
sudo wget https://dist.xebialabs.com/public/trial/xl-release/xl-release-$version-server.zip -O /tmp/xlr.zip && unzip /tmp/xlr.zip -d /opt/xebialabs/xl-release && rm /tmp/xlr.zip
#unzip /home/vagrant/xl-release-4.8.1-server.zip

#cp /vagrant/xl-release-license-v3.lic  /home/vagrant/xl-release-4.8.1-server/conf/xl-release-license.lic
#sudo mv xl-release-4.8.1-server /opt/xebialabs/xl-release
sudo chown -R vagrant.vagrant /opt/xebialabs/xl-release

/opt/xebialabs/xl-release/xl-release-$version-server/bin/server.sh -setup -reinitialize -force -setup-defaults /vagrant/xlrelease.answers

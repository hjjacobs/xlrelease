#!/bin/bash

#
# Provisioning script for use with Vagrant
# Installs, configures and starts XLRelease
#

version=4.8.1

sudo apt-get update
sudo apt-get install -y openjdk-8-jre-headless unzip wget --no-install-recommends

sudo mkdir -p /opt/xebialabs/xl-release
sudo wget https://dist.xebialabs.com/public/trial/xl-release/xl-release-$version-server.zip -O /tmp/xlr.zip && unzip /tmp/xlr.zip -d /opt/xebialabs/xl-release && sudo rm -f /tmp/xlr.zip

/opt/xebialabs/xl-release/xl-release-$version-server/bin/server.sh -setup -reinitialize -force -setup-defaults /vagrant/xlrelease.answers
nohup /opt/xebialabs/xl-release/xl-release-$version-server/bin/server.sh &
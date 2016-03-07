##############################################################################
#
# Deze Vagrantfile definieert een aantal boxen
#
# gitlab  -> voor de Gitlab Community Edition server
# nexus   -> voor de Nexus repositoty manager
# jenkins -> voor de Jenkins CI server
# scrap   -> voor het proberen van dingen
#
# Vagrant plugins
# ---------------
# vagrant plugin install vagrant-hosts
#
# Box
# ---
# Virtualbox
# 
##############################################################################

# -*- mode: ruby -*-
# vi: set ft=ruby :

MEMORY = ENV['TEST_VAGRANT_MEMORY'] || '2048'
CORES = ENV['TEST_VAGRANT_CORES'] || '1'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provision :hosts do |provisioner|
    provisioner.add_host '192.168.9.15', ['xlrelease', 'xlrelease.localdomain']
  end

  config.vm.define "xlrelease" do |node_config|
    node_config.vm.hostname = "xlrelease.localdomain"
    node_config.vm.network "private_network", ip: "192.168.9.15"
    node_config.vm.provision "shell", path: "xlrelease.sh"
  end

  config.vm.provider :virtualbox do |v, override|
    override.vm.box = "ubuntu/wily64"
    v.memory        = MEMORY
    v.cpus          = CORES
  end

end
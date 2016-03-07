##############################################################################
#
# This Vagrantfile creates a box for XLRelease (with provisioning)
#
# Box
# ---
# Virtualbox - ubuntu/wily64
# 
##############################################################################

# -*- mode: ruby -*-
# vi: set ft=ruby :

MEMORY = ENV['TEST_VAGRANT_MEMORY'] || '1024'
CORES = ENV['TEST_VAGRANT_CORES'] || '1'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

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
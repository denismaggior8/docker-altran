# -*- mode: ruby -*-
# vi: set ft=ruby :

# README
#
# Getting Started:
# 1. vagrant plugin install vagrant-hostmanager
# 2. vagrant up
# 3. vagrant ssh
#
# This should put you at the control host
#  with access, by name, to other vms
Vagrant.configure(2) do |config|

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://proxy1.altranit.corp.altran.com:8080"
    config.proxy.https    = "http://proxy1.altranit.corp.altran.com:8080"
    config.proxy.no_proxy = "localhost*,127.0.0.1"
  end
  
  config.hostmanager.enabled = true
  config.vm.box = "geerlingguy/centos7"
  #config.hostmanager.manage_host = true
  

  config.vm.define "docker-centos7" do |h|
    #h.vm.provider :virtualbox do |vb|
    #    vb.name = "docker012"
		#vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    #end
    h.vm.network "private_network", ip: "192.168.135.131"
    h.vm.provision "shell", path: "scripts/install_docker_centos.sh"
    h.vm.provision "shell", path: "scripts/install_git.sh"
    h.vm.hostname = "docker-centos7"
    h.vm.synced_folder ".", "/vagrant"
  end

end

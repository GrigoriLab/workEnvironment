# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VM_USERNAME = "ubuntu"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.define "docker" do |docker|
		docker.vm.box_check_update = false
		docker.vm.box = "ubuntu/xenial64"
		docker.vm.hostname = "dockerMachine"
		docker.vm.network "public_network"
		docker.vm.synced_folder '.', '/home/' + VM_USERNAME + '/sharedFolder'
		docker.vm.provision :shell do |s|
			s.path = 'provision.sh'
		end
	end
end

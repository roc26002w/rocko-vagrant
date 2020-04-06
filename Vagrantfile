# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  #require vagrant plugin install vagrant-disksize
  config.disksize.size = '50GB'

  config.vm.provider "virtualbox" do |v|
    v.name = "WorkSpace"
    v.memory = 8192
    v.cpus = 2
    v.customize [ "modifyvm", :id, "--uartmode1", "disconnected" ]
  end

  config.vm.provision :shell, path: "provision/vendor/init.sh"
  config.vm.provision :shell, path: "provision/vendor/ohmyzsh.sh"
  config.vm.provision :shell, path: "provision/vendor/docker.sh"
  config.vm.provision :shell, path: "provision/vendor/docker-compose.sh"
  config.vm.provision :shell, path: "provision/vendor/neovim.sh"
  config.vm.provision :shell, path: "provision/vendor/node.sh"
  config.vm.provision :shell, path: "provision/vendor/fzf.sh"
  config.vm.provision :shell, path: "provision/vendor/php.sh"

  config.vm.network :private_network, ip: "192.168.10.10"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.network :forwarded_port, guest: 33060, host: 33060
  # config.vm.network :forwarded_port, guest: 24569, host: 24569

  config.ssh.insert_key = false
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"
end

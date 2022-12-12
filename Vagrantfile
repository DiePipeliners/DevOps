# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.boot_timeout = 1000
  config.vm.network "forwarded_port", guest:5000, host: 8080

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
  
#  config.vm.provision "shell", inline: <<-SHELL
#    apt-get update
#    apt-get install -y python3-pip
#    python3 -m pip install -r /vagrant/requirements.txt
#    export FLASK_APP=/vagrant/app/app.py
#    python3 -m flask run --host=0.0.0.0
#  SHELL

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "./ansible/playbook.yml"
  end
end

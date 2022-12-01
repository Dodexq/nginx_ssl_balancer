Vagrant.configure("2") do |config|

  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vm.boot_timeout = 900


  config.vm.define "ansible-server" do |server|
    server.vm.box = "geerlingguy/ubuntu2004"
    server.vm.hostname = "ansibleserver"
    server.vm.network :public_network, ip: "192.168.0.200"
    server.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "ansible-server"
      vb.cpus = "2"
    end
  server.vm.provision "shell", path: "data/ansible-install.sh"
  end

  config.vm.define "host01" do |host01|
    host01.vm.box = "geerlingguy/ubuntu2004"
    host01.vm.hostname = "host01"
	  host01.vm.network :private_network, ip: "192.168.56.71"
    host01.vm.provider "virtualbox" do |vb|
		  vb.memory = "1024"
		  vb.name = "host01"
		  vb.cpus = "2"
	  end
  end

  config.vm.define "host02" do |host02|
    host02.vm.box = "geerlingguy/ubuntu2004"
    host02.vm.hostname = "host02"
    host02.vm.network :private_network, ip: "192.168.56.72"
	  host02.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
	    vb.cpus = "2"
      vb.name = "host02"
    end
  host02.vm.provision "shell", path: "data/host02.sh"
  end

  config.vm.define "host03" do |host03|
    host03.vm.box = "geerlingguy/ubuntu2004"
    host03.vm.hostname = "nginxtest"
    host03.vm.network "forwarded_port", guest: 8090, host: 1024
    host03.vm.network "private_network", ip: "192.168.56.73"
    host03.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
	    vb.cpus = "2"
      vb.name = "nginxtest"
    end
  host03.vm.provision "shell", path: "data/host03.sh"
  end
end
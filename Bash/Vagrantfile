Vagrant.configure("2") do |config|

  # Scriptbox VM
  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.box = "centos/stream9"
    scriptbox.vm.network "private_network", ip: "192.168.10.12"
    scriptbox.vm.hostname = "scriptbox"
    scriptbox.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"  # Increased memory
      vb.cpus = 2  # Specify the number of CPUs if needed
    end
  end

  # Web01 VM
  config.vm.define "web01" do |web01|
    web01.vm.box = "centos/stream9"
    web01.vm.network "private_network", ip: "192.168.10.13"
    web01.vm.hostname = "web01"
    web01.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"  # Increased memory
      vb.cpus = 2  # Specify the number of CPUs if needed
    end
  end

  # Web02 VM
  config.vm.define "web02" do |web02|
    web02.vm.box = "centos/stream9"
    web02.vm.network "private_network", ip: "192.168.10.14"
    web02.vm.hostname = "web02"
    web02.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"  # Increased memory
      vb.cpus = 2  # Specify the number of CPUs if needed
    end
  end

  # Web03 VM
  config.vm.define "web03" do |web03|
    web03.vm.box = "ubuntu/bionic64"  # Updated to Ubuntu 20.04 LTS
    web03.vm.network "private_network", ip: "192.168.10.15"
    web03.vm.hostname = "web03"
    web03.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"  # Increased memory
      vb.cpus = 2  # Specify the number of CPUs if needed
    end
  end
end

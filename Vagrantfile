#
# Build Yolo CTF package
#
# > vagrant global-status
# > vagrant destroy  3b6afec
# > vagrant up : 1st time failon mounting because, virtualbox extentions not installed
# > vagrant up


Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/eoan64"
    config.vm.provider "virtualbox" do |v|
        v.gui = true
        v.name = "Yolo CTF"
        v.memory = 4096
        v.cpus = 2
        
    end
    config.vm.network :public_network
end
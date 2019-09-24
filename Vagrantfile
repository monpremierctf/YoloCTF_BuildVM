Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/eoan64"
    config.vm.provider "virtualbox" do |v|
        v.gui = true
        v.name = "YoloCTF"
        v.memory = 4096
        v.cpus = 2
    end
    config.vm.network :bridged
end
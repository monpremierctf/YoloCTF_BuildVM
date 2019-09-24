
# YoloCTF_BuildVM



Build a ready to run YoloCTF VM thanks to vagrant

En pratique, vagrant déconne complètement pour la creation d'un second disque...
Autant faire à lamain...
Pffff...

A ne pas utiliser pour l'instant...


## Prerequisites

Install Virtualbox
````
https://www.virtualbox.org/
````

Install vagrant

````
https://www.vagrantup.com/
wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb
apt install ./vagrant_2.2.5_x86_64.deb
````

## Build VM

````
git clone  https://github.com/monpremierctf/YoloCTF_BuildVM.git
cd YoloCTF_BuildVM
vagrant up
vagrant ssh -c 'ls / '

````


# vagrant-boxes-packer
Packer templates for create vagrant boxes.

## Requirements

* [virtualbox](https://www.virtualbox.org/)
* [vagrant](https://www.vagrantup.com/)
* [packer](https://www.packer.io/)

## Installation
```
$ git clone git@github.com:tasukujp/vagrant-boxes-packer.git
```

```
$ brew tap caskroom/cask
$ brew install brew-cask
$ brew cask install virtualbox
$ brew cask install vagrant
```

```
$ brew tap home-brew/binary
$ brew install packer
```

## Usage

#####Create box
```
$ packer build -only=virtualbox-iso centos6/packer.json
```

#####Vagrant up
```
$ vagrant box add centos66 centos6/box/CentOS-6.6-x86_64-minimal-en.box
$ vagrant init centos66
$ vagrant up
```

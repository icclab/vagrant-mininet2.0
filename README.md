vagrant-mininet2.0
==================

Vagrant script to create a complete mininet setuo over Ununtu trusty 14.04 base VM.

Important Notes
===============
You will need Vagrant and Virtualbox setup on your machine. The vagrant scripts were tested with Vagrant 1.3.5 release with Virtualbox 4.3.12 installed.

Configuration
=============
Change the IP value in the line: 

	config.vm.network :private_network, ip: "192.168.57.20"
to the desired IP. This will allow you to ssh into the machine using IP as an alternate to doing 

	vagrant ssh

Execution
=========
In order to start the VM with mininet 2.0 on, simply

	vagrant up
once you are in the forlder with **Vagrantfile** in it. Have fun with mininet!
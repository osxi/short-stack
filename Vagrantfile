# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # You'll need to build your own box:
  # https://github.com/timsutton/osx-vm-templates
  config.vm.box = 'poetic/yosemite'

  # Vagrant doesn't know how to do this with OS X
  config.ssh.insert_key = false

  config.vm.provider 'virtualbox' do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = 2048

    # See: https://github.com/timsutton/osx-vm-templates#shared-folders
    config.vm.synced_folder '.', '/vagrant', type: 'rsync'
  end
end

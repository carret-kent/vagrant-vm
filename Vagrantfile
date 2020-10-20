Vagrant.configure("2") do |config|

  # web server
  config.vm.define "web" do |web|
    web.vm.box = "bento/amazonlinux-2"
    web.vm.network "private_network", ip: "192.168.30.10"
    web.vm.provider "virtualbox" do |vbox|
      vbox.name = "web"
      vbox.memory = "2048"
    end

    web.ssh.insert_key = false

    # ansible install
    web.vm.provision "shell", :path => "./ansible/init.sh"

    # ansible_playbook exec
    web.vm.provision "ansible_local" do |ansible|
      ansible.provisioning_path = "/vagrant/ansible"
      ansible.playbook = "site.yml"
      ansible.install = false
    end
  end
end

VAGRANTFILE_API_VERSION = "2"

box      = 'phusion/ubuntu-14.04-amd64'
url      = 'https://vagrantcloud.com/phusion/ubuntu-14.04-amd64'
hostname = 'dockeraspvnext'
domain   = 'docker-aspnet-vnext.com'
ip       = '192.168.0.42'
ram      = '1000'


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.host_name = hostname + '.' + domain
  config.vm.network 'public_network'
  config.vm.hostname = hostname

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end

  #if Dir.glob("#{File.dirname(__FILE__)}/.vagrant/machines/default/*/id").empty?
    # Install Docker
    pkg_cmd = "wget -q -O - https://get.docker.io/gpg | apt-key add -;" \
      "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list;" \
      "apt-get update -qq; apt-get install -q -y --force-yes lxc-docker; "
    # Add vagrant user to the docker group
    pkg_cmd << "usermod -a -G docker vagrant; "
    config.vm.provision :shell, :inline => pkg_cmd
  #end
end

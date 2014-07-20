FROM stephenliu/mono_from_source:0.1.0

# install some dependencies for the aspnet vnext tools
RUN apt-get update
RUN apt-get install unzip -y

# install latest k version manager
RUN bin/bash -c "curl https://raw.githubusercontent.com/aspnet/Home/master/kvminstall.sh | sh && source ~/.kre/kvm/kvm.sh"

# install specific version of k runtime (need to eat error code as kvm seems to return 1 even on success)
RUN bin/bash -c "source ~/.kre/kvm/kvm.sh && kvm install -p 1.0.0-alpha3-10160 ; echo Successfully installed kvm"

# install mozilla certs as mono doesn't have any by default
RUN bin/bash -c "/usr/bin/mozroots --import --sync"

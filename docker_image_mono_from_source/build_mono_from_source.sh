cd /tmp/mono
./autogen.sh --prefix=/usr/local
make get-monolite-latest
make EXTERNAL_MCS=${PWD}/mcs/class/lib/monolite/basic.exe
make EXTERNAL_MCS=${PWD}/mcs/class/lib/monolite/basic.exe install
rm -rf /tmp/mono

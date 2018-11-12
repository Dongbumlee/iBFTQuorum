cd ..
##Eninstall Go old version
sudo apt-get remove golang-go
sudo apt-get remove --auto-remove golang-go
##Clearning Go Env
rm * -r -f
sudo rm /usr/local/go -r -f
##Clearing Previous Quorum bits
sudo rm /usr/local/bin/* -r -f

##Update Sysetm
sudo apt-get update
sudo apt-get -y upgrade
##Download Go
wget https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz
##Extract
sudo tar -xvf go1.9.2.linux-amd64.tar.gz
##Move go
sudo mv go /usr/local
##Install Quorum
git clone https://github.com/jpmorganchase/quorum.git

export GOROOT=/usr/local/go
export GOPATH=$HOME/quorum
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


##Compile
cd quorum
make all
cd ..

export PATH=$PATH:/home/gethadmin/quorum/build/bin
export PATH=/home/gethadmin/.local/bin:$PATH

##Download Constellation
sudo apt-get update
sudo apt-get -y upgrade

echo Y | sudo apt-get install libdb-dev libleveldb-dev libsodium-dev zlib1g-dev libtinfo-dev
curl -sSL https://get.haskellstack.org/ | sh



stack setup
git clone https://github.com/jpmorganchase/constellation.git
cd constellation
stack install

cd ..

# install nodejs 6.x
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

go get github.com/getamis/istanbul-tools/cmd/istanbul

cd ..
get clone https://github.com/Dongbumlee/iBFTQuorum.git



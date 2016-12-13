#!/usr/bin/env bash

echo 'export LC_ALL="en_US.UTF-8"' >> /home/vagrant/.bashrc
 
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install oracle-java8-set-default

sudo apt-get -y --force-yes install htop

echo '----------------------------------------------'
echo ' INSTALLING SPARK                             '
echo '----------------------------------------------'
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz
tar -zxvf spark-2.0.2-bin-hadoop2.7.tgz


echo '----------------------------------------------'
echo ' INSTALLING PYTHON STUFF                          '
echo '----------------------------------------------'
sudo apt-get -y --force-yes install \
python-pip \
python-numpy \
python-dev \
python-zmq \
pkg-config \
python-matplotlib

sudo pip install --upgrade ipython[all]
sudo pip install functools32
sudo pip install tabulate

cd /home/vagrant
sudo mkdir /home/vagrant/.jupyter/
sudo touch /home/vagrant/.jupyter/jupyter_notebook_config.py
sudo jupyter notebook --generate-config
 
sudo pip install py4j

#creating swap
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

echo '----------------------------------------------'
echo ' GETTING DATA'
echo '----------------------------------------------'
cd /vagrant/data
wget https://s3.amazonaws.com/big-data-files/desafios/interactions.psv.gz
wget https://s3.amazonaws.com/big-data-files/desafios/products.psv.gz
gunzip interactions.psv.gz
gunzip products.psv.gz
rm interactions.psv.gz
rm products.psv.gz

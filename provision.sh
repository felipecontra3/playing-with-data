#!/usr/bin/env bash

echo 'export LC_ALL="en_US.UTF-8"' >> /home/vagrant/.bashrc
 
#sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get -y --force-yes install htop

echo '----------------------------------------------'
echo ' INSTALLING SPARK                             '
echo '----------------------------------------------'
#wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz
#tar -zxvf spark-2.0.2-bin-hadoop2.7.tgz


echo '----------------------------------------------'
echo ' INSTALLING PYTHON STUFF                          '
echo '----------------------------------------------'
sudo apt-get -y --force-yes install \
python-pip \
python-numpy \
python-dev \
python-zmq


sudo pip install --upgrade ipython[all]
sudo pip install functools32
sudo pip install tabulate
sudo mkdir /vagrant/notebook

cd /vagrant
!jupyter notebook --generate-config

python jupiter_passwd.py

ipython notebook --notebook-dir=/vagrant/notebook --no-browser --ip=0.0.0.0

sudo pip install py4j


#echo '----------------------------------------------'
#echo ' GETTING DATA'
#echo '----------------------------------------------'
#wget https://s3.amazonaws.com/big-data-files/desafios/interactions.psv.gz
#wget https://s3.amazonaws.com/big-data-files/desafios/products.psv.gz
#gunzip interactions.psv.gz
#gunzip products.psv.gz









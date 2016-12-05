#!/usr/bin/env bash
 
echo 'export LC_ALL="en_US.UTF-8"' >> /home/vagrant/.bashrc
 
#sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
#echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
#echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
#sudo apt-get -y install oracle-java8-installer
#sudo apt-get -y install oracle-java8-set-default

echo '----------------------------------------------'
echo ' INSTALLING SPARK                             '
echo '----------------------------------------------'
wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz
tar -zxvf spark-2.0.2-bin-hadoop2.7.tgz

#echo 'export PATH="/home/vagrant/packages/spark-1.4.1-bin-hadoop2.6/bin:$PATH"' >> /home/vagrant/.bashrc
#source ~/.bashrc

echo '----------------------------------------------'
echo ' INSTALLING PYTHON STUFF                          '
echo '----------------------------------------------'
sudo apt-get -y --force-yes install \
python-pip \
python-numpy



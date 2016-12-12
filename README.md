#Playing with data

Analysing some data with Apache Spark. This will create a virtual machine with Jupyter/iPython and Apache Spark installed. The process may take a while because it make download of all the data needed (if you  haven't it already - aproximatelly 1GB). 

##Configuration

To use it, do as described below:

0. We consider that you have already installed Vagrant, but if you don't, follow these described [steps](https://www.vagrantup.com/docs/installation/):

1. First of all, clone this directory.

2. If you already have the data on your computer (products.psv and interactions.psv - uncompacted), to save time, put the files at the `playing-with-data/data/` directory and comment these lines (using #) in the provision.sh:

	```
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
	```

3. Go to the playing-with-data directory and run `vagrant up` and wait. This will create a virtual machine with iPython running on it.

4. Access the virtual machine using `vagrant ssh`

5. To put online the Jupyter Notebook, run these commands:

	```
	cd /vagrant
	sudo python jupiter_passwd.py
	ipython notebook --notebook-dir=/vagrant/notebook --no-browser --ip=0.0.0.0 &
	```

6. Access the [Jupyter Notebook](http://192.168.33.10:8888) and use the password 123.

7. Run the notebook Exploratory Analysis

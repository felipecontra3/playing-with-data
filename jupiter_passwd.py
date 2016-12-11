from IPython.lib import passwd
password = passwd("123")
f = open('/home/vagrant/.jupyter/jupyter_notebook_config.py', 'a+')
print >> f, 'c = get_config()'
print >> f, "c.NotebookApp.password = u'" + password + "'"
f.close()

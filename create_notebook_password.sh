NOTEBOOK_CONFIG=~/.jupyter/jupyter_notebook_config.py

mkdir ~/.jupyter
echo "c = get_config();c.NotebookApp.password = u'"$(python -c 'from IPython.lib import passwd;print(passwd())')"'" > $NOTEBOOK_CONFIG

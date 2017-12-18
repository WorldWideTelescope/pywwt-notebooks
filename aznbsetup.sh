#!/bin/bash

# As mentioned in https://github.com/Microsoft/AzureNotebooks/issues/245,
# it looks like nbextensions is a symbolic link to a non-existing directory
# initially
rm -rf /home/nbuser/.local/share/jupyter/nbextensions
mkdir /home/nbuser/.local/share/jupyter/nbextensions

# Install pywwt!

pip3 install pywwt --pre --upgrade-strategy only-if-needed --user

python3 /usr/local/bin/jupyter-nbextension install --py --user widgetsnbextension
python3 /usr/local/bin/jupyter-nbextension install --py --user ipyevents
python3 /usr/local/bin/jupyter-nbextension install --py --user pywwt

python3 /usr/local/bin/jupyter-nbextension enable --py --user widgetsnbextension
python3 /usr/local/bin/jupyter-nbextension enable --py --user ipyevents
python3 /usr/local/bin/jupyter-nbextension enable --py --user pywwt


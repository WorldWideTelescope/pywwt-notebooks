#!/bin/bash

set -ex

git config --global user.email "binder@user.com"
git config --global user.name "Binder"

# Set up Jupyter Lab and needed extensions
pip install jupyterlab ipyevents --user
jupyter labextension install @jupyter-widgets/jupyterlab-manager ipyevents --no-build

# Install main packages needed for notebook
pip install PyQt5 "astroquery>=0.3.9" "PyYAML>=3.1.3" --user

# Quasi-hack: use pywwt master (as of 2019-Sep-13). We specify a commit ID so
# that when we update the branch, this file changes and Binder figures out
# that it needs to rebuild the Docker image.
pip install git+https://github.com/WorldWideTelescope/pywwt.git@4b94cac5b9b --user

# Re-build Jupyter Lab
jupyter lab build

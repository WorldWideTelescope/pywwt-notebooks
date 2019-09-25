#!/bin/bash

set -ex

git config --global user.email "binder@user.com"
git config --global user.name "Binder"

# Set up Jupyter Lab and needed extensions
pip install jupyterlab ipyevents --user
jupyter labextension install @jupyter-widgets/jupyterlab-manager ipyevents --no-build

# Install main packages needed for notebook
pip install "pywwt>=0.7.0" PyQt5 "astroquery>=0.3.9" "PyYAML>=3.1.3" --user

# Re-build Jupyter Lab
jupyter lab build

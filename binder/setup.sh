#!/bin/bash

set -ex

git config --global user.email "binder@user.com"
git config --global user.name "Binder"

# Set up Jupyter Lab and needed extensions
pip install jupyterlab ipyevents --user
jupyter labextension install @jupyter-widgets/jupyterlab-manager ipyevents --no-build

# Other necessary/useful packages
pip install PyQt5 "astroquery>=0.3.9" "PyYAML>=3.1.3" --user

# Finally, pywwt. BinderHub only knows to rebuild its images when this file or
# the Dockerfile changes, so we need a scheme that gives us a nice reason to
# update this file when we want to target a different version of pywwt. That's
# why we name a commit ID and not a branch name.
pip install git+https://github.com/WorldWideTelescope/pywwt.git@756a6959 --user

# Re-build Jupyter Lab
jupyter lab build

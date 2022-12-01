#!/bin/bash

set -xeuo pipefail

git config --global user.email "binder@user.com"
git config --global user.name "Binder"

# Other necessary/useful packages
pip install \
  astropy \
  "astroquery>=0.3.9" \
  healpy \
  ipyevents \
  jupyterlab \
  jupyterlab_widgets \
  PyQt5 \
  "PyYAML>=3.1.3" \
  reproject \
  shapely \
  toasty \
  wwt_data_formats \
  wwt_jupyterlab_extension \
  wwt-kernel-data-relay \
  --user

# JLab extensions not provided by Python packages
jupyter labextension install --no-build ipyevents

# Finally, pywwt. BinderHub only knows to rebuild its images when this file or
# the Dockerfile changes, so we need a scheme that gives us a nice reason to
# update this file when we want to target a different version of pywwt.
pip install https://github.com/WorldWideTelescope/pywwt/archive/pypa/pywwt@0.17.0.zip --user

# Demonstrate how to configure the JupyterLab install to use the bundled app
# instead of the hosted version. This isn't actually necessary with MyBinder,
# but it's good to test that the functionality works.

settings=$(jupyter --data-dir)/lab/settings
mkdir -p "$settings"
cat <<'EOF' >"$settings/overrides.json"
{
  "@wwtelescope/jupyterlab:research": {
    "appUrl": "/wwtstatic/research/"
  }
}
EOF

# Re-build Jupyter Lab with debuggability for mybinder.org
# 2020 Oct: setting --minimize=False to try to get mybinder building
log=$(mktemp)
jupyter lab build --minimize=False --debug-log-path=$log || { cat $log; exit 1; }

# Summary:

jupyter nbextension list
jupyter serverextension list
jupyter labextension list
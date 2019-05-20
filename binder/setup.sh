#!/bin/bash

set -ex

git config --global user.email "binder@user.com"
git config --global user.name "Binder"

pip install pywwt>=0.5.2 PyQt5 astroquery>=0.3.9 PyYAML>=3.1.3

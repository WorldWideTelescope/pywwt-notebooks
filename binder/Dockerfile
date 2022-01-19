# This dockerfile is used to set up a plain Linux environment into which we can
# install all dependencies with pip, and avoid conda. The documentation about
# using Dockerfiles with mybinder can be found here:

# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile

FROM ubuntu:20.04

# Set up Python and Node.js.
#
# For the time being, Node has to be installed using an extra repo because the
# version in Ubuntu 20.04 is too old. And we're stuck on 20.04 because the
# version of Docker used by MyBinder doesn't work with newer Ubuntu releases.

ENV DEBIAN_FRONTEND noninteractive
RUN apt update
RUN apt install -y curl python3 python3-pip git
RUN curl -sL https://deb.nodesource.com/setup_16.x |bash
RUN apt install -y nodejs
RUN pip3 install --upgrade pip

# Set up user as required by mybinder docs:

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Copy the contents of notebooks and the setup.sh script into the root of
# the binder environment.

COPY . ${HOME}/
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# Change working directory

WORKDIR ${HOME}

# Update variables to point to local install

ENV PATH="${HOME}/.local/bin:${PATH}"
ENV JUPYTER_CONFIG_DIR="${HOME}/.local/etc/jupyter/"

# Run post-build script

RUN binder/setup.sh

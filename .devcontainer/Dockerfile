# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/codespaces-linux/.devcontainer/base.Dockerfile

#FROM mcr.microsoft.com/vscode/devcontainers/universal:2-focal
FROM ubuntu:22.04

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>
RUN apt-get update && apt-get -y install --no-install-recommends &&  apt-get install -y build-essential libssl-dev libffi-dev python3-dev



ARG USER="root"
ARG VENV_PATH="/panug/venv"
COPY requirements.txt /tmp/
COPY Makefile /tmp/
RUN su echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" | \
    && su tee -a /etc/apt/sources.list.d/netdevops.list -y \
    && su apt install containerlab -y \
    && su apt-get install containerd -y \
    && su apt remove moby-tini -y \

RUN su bash panug/setup.sh


#!/bin/bash

export PATH="$PATH:$HOME/.local/bin"


## Script to install personal config: oh my ZSH
export INSTALL_PATH=$(pwd)


# Install Conda and Mamba from GitHub (using miniforge)
export CONDA_DIR=/opt/conda
export download_url=$(curl -s https://api.github.com/repos/conda-forge/miniforge/releases/latest | grep browser_download_url | grep -P "Mambaforge-\d+((\.|-)\d+)*-Linux-x86_64.sh" | grep -v sha256 | cut -d '"' -f 4)
echo "Downloading latest conda miniforge from $download_url"
curl -Lf -o miniforge.sh $download_url
# curl -Lf "https://github.com/conda-forge/miniforge/releases/download/${miniforge_version}/${miniforge_installer}" -o miniforge.sh
/bin/bash "miniforge.sh" -f -b -p "${CONDA_DIR}"
rm "miniforge.sh"
conda config --system --set auto_update_conda false
conda config --system --set show_channel_urls true


# Install Java 11 and NodeJS 14 (npm + yarn)
mamba install -y openjdk=11 maven
# mamba install -y nodejs=14
# npm install --global yarn


# Install Kubernetes and OpenShift dependencies: kubectl, oc, helm
cd /tmp
wget https://mirror.openshift.com/pub/openshift-v4/clients/oc/latest/linux/oc.tar.gz && tar xvf oc.tar.gz
sudo mv oc kubectl /usr/local/bin/
wget https://github.com/kubeflow/kfctl/releases/download/v1.2.0/kfctl_v1.2.0-0-gbc038f9_linux.tar.gz
tar -xzf kfctl_v1.2.0-0-gbc038f9_linux.tar.gz
sudo mv kfctl /usr/local/bin/
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
cd $INSTALL_PATH


#!/bin/bash

# Plugin list
asdf plugin add age https://github.com/threkk/asdf-age.git
asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git
asdf plugin add sops https://github.com/feniix/asdf-sops.git
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add python

asdf plugin-list
asdf install

# Install python tools
pip install -r requirements.txt

# reinstall terraform
PLUGIN=terraform asdf list $PLUGIN | awk '{print "asdf uninstall $PLUGIN " $1 "; asdf install $PLUGIN " $1}' | bash
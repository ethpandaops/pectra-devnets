#!/bin/bash -xe

# Uninstall previous asdf plugins that shouldn't be managed anymore under asdf
asdf uninstall ansible
asdf uninstall ansible-lint

# Plugin list
asdf plugin add age https://github.com/threkk/asdf-age.git || true
asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git || true
asdf plugin add sops https://github.com/feniix/asdf-sops.git || true
asdf plugin-add terraform https://github.com/asdf-community/asdf-hashicorp.git || true
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git || true
asdf plugin-add python || true
asdf plugin add awscli || true

asdf plugin-list
asdf install

# Install python tools
pip install -r requirements.txt

# reinstall terraform
PLUGIN=terraform asdf list $PLUGIN | awk '{print "asdf uninstall $PLUGIN " $1 "; asdf install $PLUGIN " $1}' | bash

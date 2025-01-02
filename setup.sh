#!/bin/bash
set -e

# Plugin list
if ! asdf plugin list | grep -q age; then
  asdf plugin add age https://github.com/threkk/asdf-age.git
fi

if ! asdf plugin list | grep -q shellcheck; then
  asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git
fi

if ! asdf plugin list | grep -q sops; then
  asdf plugin add sops https://github.com/feniix/asdf-sops.git
fi

if ! asdf plugin list | grep -q terraform; then
  asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
fi

if ! asdf plugin list | grep -q helm; then
  asdf plugin add helm https://github.com/Antiarchitect/asdf-helm.git
fi

if ! asdf plugin list | grep -q python; then
  asdf plugin add python https://github.com/asdf-community/asdf-python.git
fi

if ! asdf plugin list | grep -q ansible-lint; then
  asdf plugin add ansible-lint https://github.com/amrox/asdf-ansible-lint.git
fi

if ! asdf plugin list | grep -q awscli; then
  asdf plugin add awscli https://github.com/MetricMike/asdf-awscli.git
fi

if ! asdf plugin list | grep -q yq; then
  asdf plugin add yq https://github.com/sudermanjr/asdf-yq.git
fi

asdf install

# Install python tools
pip install -r requirements.txt

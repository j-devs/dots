#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function setup() {
  rsync --exclude ".git/" \
        --exclude ".DS_Store" \
        --exclude ".osx" \
        --exclude "README.md" \
        --exclude "install.sh" \
        -avh --no-perms . ~;
}

setup;
unset setup;

source ~/.bash_profile;

# TODO: Brew install baseline apps

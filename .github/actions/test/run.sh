#!/bin/bash
set -e
# git config --global user.email "andrea19934@google.com"
# git config --global user.name "Andrea Ostuni"

echo "$SSH_AUTH_SOCK"
eval "$(ssh-agent)"
ssh-add -L
cat /etc/ssh_config
ssh -T git@github.com
./setup.sh
./build.sh
./test.sh

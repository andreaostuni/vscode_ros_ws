#!/bin/bash
set -e
echo "$SSH_AUTH_SOCK"
eval "$(ssh-agent)"
# ssh-add -L
# cat /etc/ssh_config
ssh -vT git@github.com
./setup.sh
ament_${LINTER} src/

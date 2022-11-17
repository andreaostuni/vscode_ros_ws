#!/bin/bash
set -e
echo "$SSH_AUTH_SOCK"
ssh -T git@github.com
./setup.sh
ament_${LINTER} src/

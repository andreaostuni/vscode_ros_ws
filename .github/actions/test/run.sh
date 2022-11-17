#!/bin/bash
set -e
git config --global user.email "andrea19934@google.com"
git config --global user.name "Andrea Ostuni"
ssh -T git@github.com
./setup.sh
./build.sh
./test.sh

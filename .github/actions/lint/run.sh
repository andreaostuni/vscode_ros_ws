#!/bin/bash
set -e
ssh -T git@github.com
./setup.sh
ament_${LINTER} src/

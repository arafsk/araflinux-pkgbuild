#!/bin/bash
set -eo pipefail

workdir=$(pwd)

##################################################################################################################
# Git workflow
git add --all .
git commit -m "update"

git push -f origin main

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename "$0") done"
echo "##############################################################"
tput sgr0
echo

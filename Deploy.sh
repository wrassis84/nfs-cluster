######## ENVIRONMENT ###########################################################

#!/usr/bin/env bash

######## ABOUT #################################################################

# Repository      : https://github.com/wrassis84/<REPO>
# Author          : William Ramos de Assis Rezende
# Maintainer      : William Ramos de Assis Rezende
#
# Deploy.sh       : Executes Ansible Playbooks to Deploy Servers.
# Requirements    : bash, ansible
# Usage           : ./Deploy.sh

######## TESTING ENVIRONMENT ###################################################

######## TESTS/VALIDATIONS #####################################################

######## VARIABLES #############################################################

######## FUNCTIONS #############################################################

######## MAIN CODE - START #####################################################
echo "Configuring environment..."
source .env && cd - > /dev/null

echo "Playing nfs-sharing role..."
ansible-playbook ./main.yml -u sysadmin -b #> /dev/null
######## MAIN CODE - END #######################################################
# TODO:
# Test if ansible is installed;
# Checks that servers are running and reachable;
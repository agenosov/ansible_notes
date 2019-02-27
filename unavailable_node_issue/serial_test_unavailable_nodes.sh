#!/bin/bash

set -e
source $ANSIBLE_DEVEL_HOME/hacking/env-setup

# Below we ask Ansible to use an inventory list plugin.
# Just specify at least one unavailable address and at least one available address.
#
ansible-playbook -i '10.16.42.13,10.16.43.57' use_unavailable_nodes.yml --ask-pass -u user

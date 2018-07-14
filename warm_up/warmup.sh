#!/bin/bash

set -e

# Change current directory to allow Ansible to prioritize using of our custom configuration
cd "$(dirname "$0")"

# Use the option --ask-pass in order to not use SSH keys - it would be more convenient for demo case
#
# export ANSIBLE_VERBOSITY = N (N=1..4, if you want to influence on debug level)
# export ANSIBLE_DEBUG=1 if it's interesting to make Ansible very verbose
#
ansible-playbook -i inventory.yml warmup.yml --ask-pass --ask-become-pass 

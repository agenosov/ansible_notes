#!/bin/bash

set -e

# Change current directory to allow Ansible to prioritize using of our custom configuration
cd "$(dirname "$0")"

# Use the option --ask-pass in order to not use SSH keys - it would be more convenient for demo case
ansible-playbook -i inventory.yml warmup.yml --ask-pass --ask-become-pass 

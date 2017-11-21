## The note about fixing Ansible warnings related to using deprecated utility modules and command line options

First I present an old approach to include tasks and playbooks via using the *include* utility module and how to do it better by using **more explicit** approach. 

For this demo we need two Linux hosts with **different kernel versions and different package managers** (both yum and apt). Create an inventory file with section named *farm* (this group of host is used inside the examples).

Launch:
1. *ansible-playbook -v -i test_inventory fixing_warnings/implicit_includes.yml -u user --ask-pass*.
2. *ansible-playbook -v -i test_inventory fixing_warnings/explicit_includes.yml -u user --ask-pass*

## The note about fixing Ansible warnings related to using deprecated utility modules

I show an old approach to include tasks and playbooks via using the *include* utility module and then *how to do it better* by using **more explicit** approach.
Ansible warns us about using deprecated features:
- [DEPRECATION WARNING]: The use of 'include' for tasks has been deprecated
- [DEPRECATION WARNING]: 'include' for playbook includes

Launch:
    ansible-playbook -v fixing_warnings/implicit_includes.yml
    ansible-playbook -v -i test_inventory fixing_warnings/explicit_includes.yml -u user --ask-pass*

### Misc tips

* Make Ansible **very verbose**:
    - specify *debug = true* under the *defaults* section in *ansible.cfg* or
    - export ANSIBLE_DEBUG=1

* Config file located in HOME dir must be *.ansible.cfg* (**not ansible.cfg**)


### Configuring Ansible

* Finding & reading configuration: *./lib/ansible/config/manager.py*


### About working with Inventory

* Most inventory plugins shipped with Ansible are **disabled by default** and need to be whitelisted in the ansible.cfg (under the *inventory* section see the *enable_plugins* key)

* It's possible to **just pass a list of target hosts** as a comma separated values of hosts - this is conveniently for fast checking as you dont't have to specify an inventory file:
    ansible 10.16.93.13 -i '10.16.93.13, 10.16.93.2' -m debug -a 'msg=hello' -u andrey --ask-pass

* View the list of all available [inventory plugins](https://docs.ansible.com/ansible/devel/plugins/inventory.html):
    *ansible-doc -t inventory -l*


### Running playbooks

* It's possible to react on starting of each playbook - there's special callback for this. See the *v2_playbook_on_start* callback.
### About tasks inside playbooks

* It worth noting that tasks are executed in order (one at a time) against all target machines, before moving to the next task.

* At the end of each block of tasks, *notify actions* are triggered.


### About modules

#### Setup module to gather facts about remote hosts

* Collector classes are defined in a list inside *./lib/ansible/module_utils/facts/default_collectors.py*


### Callback plugins

* Custom callback directory sources can be specified in ansible.cfg

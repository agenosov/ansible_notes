### About working with Inventory

* Most inventory plugins shipped with Ansible are **disabled by default** and need to be whitelisted in the ansible.cfg (under the *inventory* section see the *enable_plugins* key)

* It's possible to **just pass a list of target hosts** as a comma separated values of hosts - this is conveniently for fast checking as you dont't have to specify an inventory file:
    ansible 10.16.93.13 -i '10.16.93.13, 10.16.93.2' -m debug -a 'msg=hello' -u andrey --ask-pass

* View the list of all available [inventory plugins](https://docs.ansible.com/ansible/devel/plugins/inventory.html):
    *ansible-doc -t inventory -l*


### About modules


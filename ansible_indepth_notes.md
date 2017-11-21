### About working with Inventory

* Most inventory plugins shipped with Ansible are **disabled by default** and need to be whitelisted in the ansible.cfg (under the *inventory* section see the *enable_plugins* key)

* It's possible to **just pass a list of target hosts** as a comma separated values of hosts - this is conveniently for fast checking as you dont't have to specify an inventory file:
    ansible 10.16.93.13 -i '10.16.93.13, 10.16.93.2' -m debug -a 'msg=hello' -u andrey --ask-pass

* View the list of all available [inventory plugins](https://docs.ansible.com/ansible/devel/plugins/inventory.html):
    *ansible-doc -t inventory -l*


### About modules

* module_utils (see the *module_utils* configuration option) are python modules that Ansible is able to combine with Ansible modules when sending them to the remote machine. Having custom module_utils is useful for extracting common code when developing a set of site-specific modules

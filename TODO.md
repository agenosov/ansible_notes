* Examples showing when the serial strategy is matters:
** using the *pause* module

* Some interesting examples of using *Jinja2* templates

* Demo of gathering local facts and using the *gathering = smart* option in Ansible's config

* Example of remote debugging the yum module - show how it helps to discover the problem with downgrading packages

* Try another approach for processing server/sensor nodes, using **roles**:
** a) don't change current structure of inventory and use the *group_by* approach
** b) restruct inventory

* Look at using *http://docs.ansible.com/ansible/latest/playbooks_async.html*
** it's not required to explicitly set poll interval - for such case it's possible to use the *poll_interval* configuration option

* Write own module to wrap product configurator

* Modules related to Networking and, in particular, to SDN
** Learn ./lib/ansible/modules/network/ovs/openvswitch_* - for modules that **manage OpenSwitch devices**
** the NETCONF connection plugin
** use **persistent connection** - to allow one SSH connection  to stay active **across multiple tasks**

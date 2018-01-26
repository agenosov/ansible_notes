* Examples showing when the serial strategy is matters:
** using the *pause* module

* Demo of gathering local facts and using the *gathering = smart* option in Ansible's config

* Caveat related to working with local facts.
  In the context of gathering facts related to the product, it should be noted that if the product isn't installed,
  local facts which we try to gather **would be defined anyway**.
  It would be just empty *json* in case of product absense (so it's wrong that the facts would be undefined).

* Try another approach for processing server/sensor nodes, using **roles**:
** a) don't change current structure of inventory and use the *group_by* approach
** b) restruct inventory

* Look at using *http://docs.ansible.com/ansible/latest/playbooks_async.html*
** it's not required to explicitly set poll interval - for such case it's possible to use the *poll_interval* configuration option

* Motivations to write own modules:
    - for the task of detecting on *deb-based* systems the downgrade scenario it would be more convenient to use a module,
      as my current implementation requires to pass the separate fact into the block of tasks and this flag is to be reset each time.
    - own module to wrap product configurator

* Modules related to Networking and, in particular, to SDN
** Learn ./lib/ansible/modules/network/ovs/openvswitch_* - for modules that **manage OpenSwitch devices**
** the NETCONF connection plugin
** use **persistent connection** - to allow one SSH connection  to stay active **across multiple tasks**

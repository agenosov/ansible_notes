* Note about fixing deprecated warnings:
** get rid of the 'include' statement + motivation to do this
** replace the *--ask-sudo-pass* option to *--ask-become-pass* and why it matters

* Examples showing when the serial strategy is matters:
** using the *pause* module

* Some interesting examples of using *Jinja2* templates

* Demo of gathering local facts and using the *gathering = smart* option in Ansible's config

* Example of remote debugging the yum module - show how it helps to discover the problem with downgrading packages

* Try another approach for processing server/sensor nodes, using **roles**:
** a) don't change current structure of inventory and use the *group_by* approach
** b) restruct inventory

* Write own module to wrap product configurator

* Modules related to Networking and, in particular, to SDN
** Learn ./lib/module_utils/openswitch.py - for modules that **manage OpenSwitch devices**

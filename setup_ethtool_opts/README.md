This is a demo of how to use Ansible to configuring TCP offload engine on a network interface.

Demo-cases:

1. A naive approach. Playbook describes steps to configure TOE with _ethtool_ and to persist the settings. It doesn't take into account:
    - whether the network interface is controlled by _Network Manager_ (**it matters**)
    - whether there's a configuration file for network interface.

   Run playbook:
   ```bash
   ansible-playbook -i [INV_FILE | INV_LIST] ./toe_setup_naive.yml -u  --ask-pass --ask-become
   ```

   As a result, TOE settings will be configured on the specified network device.
   But... As mentioned above, this solution doesn't take into account 2 important cases.
   In case of the network interface is controlled by _Network Manager_, persisting TOE settings in the configuration file has no effect.
   In case there's no configuration file for the network interface (this's a valid situation) everything worse: playbook will fail.

2. Considering the case when there's no configuration file for the network interface


3. Taking into account Network Manager



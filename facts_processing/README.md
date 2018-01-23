Here are the various demos of working with gathered *facts* about target nodes.

1. For the demo of *creating adhoc groups* we need several (2 or more) Linux hosts with different package managers (yum and apt).
   
   To run the playbook run the command:
       ansible-playbook -v -i ./test_inventory facts_processing/adhoc_groups.yml --user=user --ask-pass

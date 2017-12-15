* Quick access to the module doc via CLI:
   ansible-doc setup 

### How to view available facts from remote nodes:

* `ansible [HOST_IP_PATTERN] -i [INVENTORY_PATH] -m setup <CONNECTION_OPTIONS>`

* concrete examples:
    
    - gather the all facts:
        ansible 10.16.93.71 -i [INV_PATH] -m setup --user=user --ask-pass
    
    - find out the **system specific modules to control services**:
        ansible 10.16.93.71 -i [INV_PATH] -m setup -a 'filter=ansible_service_mgr' --user=user --ask-pass




### How to view available facts from remote nodes:
* `ansible [HOST_IP_PATTERN] -i [INVENTORY_PATH] -m setup <CONNECTION_OPTIONS>`
* concrete example: `ansible 10.16.93.71 -i /tmp/alse_inventory -m setup --user=user --ask-pass`



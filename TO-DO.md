# Missing things in server deps



- allow username to login as sudo via ssh without pass
  `ALL=(ALL) NOPASSWD:ALL` added to `/etc/sudoers` file
- install k9s on master
- ~/.kube/config copy
- install flux v2 binary on localhost and master


## Done but not tested

- Add nortek persistant names  (https://www.davecorder.org/blog/persistent-linux-device-names-for-nortek-gocontrol-husbzb-1-z-wave-and-zigbee-stick/)
  ```SUBSYSTEM=="tty", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="8a2a", ATTRS{serial}=="813004F4", ENV{ID_USB_INTERFACE_NUM}=="00", SYMLINK+="zwave"
     SUBSYSTEM=="tty", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="8a2a", ATTRS{serial}=="813004F4", ENV{ID_USB_INTERFACE_NUM}=="01", SYMLINK+="zigbee"```

- jq (Should already be installed)
- jmespath (done but not tested)
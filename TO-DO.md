# Missing things in server deps

- Test router NTP server and if it works, set the servers to use those

- Figure out how to set up the install to pull the hostname from the DHCP server

- Put an empty partition (nvme0n1p4) into the ISO so rook can start without manual intervention

- Add this command if e1000e drivers (all NUCs)
` sudo ethtool -K eno1 gso off gro off tso off`

- Prevent ansible from asking password a billion times
  Gets run at each ansible playbook beginnging (resets after reboot)
  ```
  ssh-agent $SHELL
  ssh-add /home/$USER/.ssh/id_rsa
  ```

- install k9s on master
- ~/.kube/config copy
- install flux v2 binary on localhost and master


## Done but not tested

- jq (Should already be installed)
- jmespath (done but not tested)
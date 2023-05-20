#!/bin/bash

sudo bash -c "chattr -f -i /etc/resolv.conf"
sudo bash -c "rm --force /etc/resolv.conf"
sudo bash -c "echo $'nameserver 8.8.8.8\n' > /etc/resolv.conf"
sudo bash -c "echo $'nameserver 8.8.4.4\n' >> /etc/resolv.conf"
sudo bash -c "echo $'[network]' > /etc/wsl.conf"
sudo bash -c "echo $'generateResolvConf = false\n' >> /etc/wsl.conf"
sudo bash -c "chattr -f +i /etc/resolv.conf"

#!/bin/bash

username=sonic
config=/etc/wsl.conf
sudo useradd -m -d /home/$username -s /bin/bash -G sudo $username
sudo passwd $username
sudo chmod 666 $config
echo "[user]" >> $config
echo "default=$username" >> $config
sudo chmod 644 $config
cat /etc/wsl.conf
echo cd >> /home/$username

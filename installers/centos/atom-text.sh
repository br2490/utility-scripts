#!/bin/bash

wget https://atom.io/download/rpm -O /tmp/atom.rpm;
sudo yum install /tmp/atom.rpm -y;
sudo rm /tmp/atom.rpm;

echo -e "\n\nInstall done on `hostname` (`uname -s` - `uname -m`):"
atom --version;


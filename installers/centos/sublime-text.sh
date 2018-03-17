#!/bin/bash

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg;

sudo yum-config-manager --add-repo \
    https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo -y;

sudo yum install sublime-text -y;

echo -e "\n\nInstall done on `hostname` (`uname -s` - `uname -m`):\nSublime text editor:"
subl --version;


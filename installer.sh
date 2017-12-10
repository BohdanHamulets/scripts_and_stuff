#!/bin/bash

# I've made this script to help with seting-up new Ubuntu machine

# You'll need to be root to run this script so do "$sudo su", then
# either make this file executable "chmod +x ./<this_file>" or
# do "bash ./<this_file>"

# You can update, add or delete pacages needed for you. Have fun.

sudo apt-get update

yes | sudo apt-get install tmux htop netcat nmap curl

yes | sudo apt-get install silversearcher-ag  chromium-chromedriver firefox

yes | sudo apt-get install python3-selenium ipython3 python3 python3-pip

yes | sudo apt-get install git openssl tcpdump

yes | sudo apt-get autoclean

yes | sudo apt-get autoremove
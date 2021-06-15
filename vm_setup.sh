#!/bin/bash
# script for setting up pre-made virtual machines to my liking
# will probably increase as time goes
apt update
apt upgrade
apt install seclists
setxkbmap -model abnt2 -layout br
touch ~/.hushlogin

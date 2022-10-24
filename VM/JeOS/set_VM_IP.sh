#!/bin/bash
firewall-cmd --zone=internal --add-service=http --permanent
firewall-cmd --zone=internal --add-service=https --permanent

nmcli con mod "$1" zone.internal
nmcli con mod "$1" ipv4.addresses $2
nmcli con mod "$1" ipv4.method manual
nmcli con up "$1"

firewall-cmd --zone=internal --change-interface=$3 --permanent
firewall-cmd --reload
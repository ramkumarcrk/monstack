#!/usr/bin/env bash
## Run this script as a sudo  user who is having superuser privialge with NOPASSWD or simply run as root user
##skipping if condition since package manager does for you
#Memory requirement Min 8 G RAM

printf "\nClear yum Cache \n"
sudo yum clean all
sleep 2

printf "\n Installing EPEL repo in \n"
sudo yum install epel-release -y
sleep 3


printf "\n Installing Ansible \n"
sudo yum install ansible -y
sleep 3


printf "\n Copy requirements.txt  \n"
cp requirements.txt /tmp/
sleep 2

printf "\n Go to Ansible path for Ansible role installation \n"
sudo /usr/bin/ansible-playbook grafana.yml --ask-vault-pass

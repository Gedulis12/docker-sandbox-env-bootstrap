#!/bin/bash

: ${SSH_USERNAME:=sandboxuser}
: ${SSH_USERPASS:=changeme}

__create_rundir() {
	mkdir -p /var/run/sshd
}

__create_user() {
# Create a user to SSH into as.
useradd -m $SSH_USERNAME
usermod -aG wheel $SSH_USERNAME
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | passwd $SSH_USERNAME
echo '%wheel ALL=(ALL:ALL) ALL' >> /etc/sudoers
}

__create_hostkeys() {
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
}

# Call all functions
__create_rundir
__create_hostkeys
__create_user

exec "$@"

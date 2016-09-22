#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Richard Wood <rwood at westcoastinformatics.com>' -s ${MY_SHELL} -m rwood
cat >/etc/sudoers.d/rwood-ALL <<EOF
rwood     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/rwood-ALL
mkdir ~rwood/.ssh
chmod 700 ~rwood/.ssh
curl https://raw.githubusercontent.com/RichardAWood/ssh_access/master/rwood_rsa.pub >~rwood/.ssh/authorized_keys
chmod 400 ~rwood/.ssh/authorized_keys
chown -R rwood ~rwood/.ssh

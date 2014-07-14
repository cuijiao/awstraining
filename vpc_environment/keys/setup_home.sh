#! /bin/bash

for user in $(ls | egrep -v 'README|setup_home.sh')
do
  useradd -m $user
  mkdir -p /home/${user}/.ssh
  chmod 500 /home/${user}/.ssh
  mv $user /home/${user}/.ssh/authorized_keys
  chmod 400 /home/${user}/.ssh/authorized_keys
  chown -R ${user}: /home/${user}
done

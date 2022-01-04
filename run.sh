#!/bin/sh
if [ -e setup_done ]; then
  /usr/local/bin/domain-connect-dyndns update --all
  echo 'Updated'
else
  echo "Setting up $DOMAIN"
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN"
  touch setup_done
  echo 'Setup Done'
fi

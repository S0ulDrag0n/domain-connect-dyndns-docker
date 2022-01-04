#!/bin/sh
if [ -e setup_done ]; then
  /usr/local/bin/domain-connect-dyndns update --all --config /app/data/settings.txt
  echo 'Updated'
else
  echo "Setting up $DOMAIN1"
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN1"

  echo "Setting up $DOMAIN2"
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN2"

  touch setup_done
  echo 'Setup Done'
fi

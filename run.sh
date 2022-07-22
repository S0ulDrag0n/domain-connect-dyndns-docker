#!/bin/bash

if [ -e setup_done ]; then
  for var in "${!DOMAIN@}"; do
    declare -n ref=$var
    echo "Found $ref"
  done
  /usr/local/bin/domain-connect-dyndns update --all --config /app/data/settings.txt
  echo 'Updated'
else
  for var in "${!DOMAIN@}"; do
    declare -n ref=$var
    echo "Setting up $ref"
    /usr/local/bin/domain-connect-dyndns setup --domain "$ref"
  done
  # echo "Setting up $DOMAIN1"
  # /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN1"

  # echo "Setting up $DOMAIN2"
  # /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN2"

  touch setup_done
  echo 'Setup Done'
fi

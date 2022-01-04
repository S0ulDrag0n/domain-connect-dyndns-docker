#!/bin/sh

if [ -e setup_done ] ;then
  /usr/local/bin/domain-connect-dyndns update --all
else
  /usr/local/bin/domain-connect-dyndns setup --domain "$DOMAIN"
  touch setup_done
fi

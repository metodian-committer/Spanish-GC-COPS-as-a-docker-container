#!/bin/bash

source /etc/apache2/envvars
apache2 -V || true
service apache2 restart || true
tail -f /dev/random

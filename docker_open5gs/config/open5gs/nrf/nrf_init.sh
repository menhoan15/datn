#!/bin/bash

cp /mnt/nrf/nrf.yaml install/etc/open5gs
sed -i 's|NRF_IP|'$NRF_IP'|g' install/etc/open5gs/nrf.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

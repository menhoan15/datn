#!/bin/bash

cp /mnt/ausf/ausf.yaml install/etc/open5gs
sed -i 's|AUSF_IP|'$AUSF_IP'|g' install/etc/open5gs/ausf.yaml
sed -i 's|NRF_IP|'$NRF_IP'|g' install/etc/open5gs/ausf.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

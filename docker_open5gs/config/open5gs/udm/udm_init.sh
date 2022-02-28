#!/bin/bash

cp /mnt/udm/udm.yaml install/etc/open5gs
sed -i 's|UDM_IP|'$UDM_IP'|g' install/etc/open5gs/udm.yaml
sed -i 's|NRF_IP|'$NRF_IP'|g' install/etc/open5gs/udm.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

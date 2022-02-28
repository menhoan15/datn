#!/bin/bash

export DB_URI="mongodb://${MONGO_IP}/open5gs"

cp /mnt/pcf/pcf.yaml install/etc/open5gs
sed -i 's|PCF_IP|'$PCF_IP'|g' install/etc/open5gs/pcf.yaml
sed -i 's|NRF_IP|'$NRF_IP'|g' install/etc/open5gs/pcf.yaml
sed -i 's|MONGO_IP|'$MONGO_IP'|g' install/etc/open5gs/pcf.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

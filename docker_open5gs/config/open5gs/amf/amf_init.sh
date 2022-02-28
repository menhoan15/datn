#!/bin/bash

cp /mnt/amf/amf.yaml install/etc/open5gs
sed -i 's|AMF_IP|'$AMF_IP'|g' install/etc/open5gs/amf.yaml
sed -i 's|NRF_IP|'$NRF_IP'|g' install/etc/open5gs/amf.yaml
sed -i 's|MNC|'$MNC'|g' install/etc/open5gs/amf.yaml
sed -i 's|MCC|'$MCC'|g' install/etc/open5gs/amf.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

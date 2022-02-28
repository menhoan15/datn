#!/bin/bash
export IP_ADDR=$(awk 'END{print $1}' /etc/hosts)

cp /mnt/ueransim/open5gs-gnb.yaml /UERANSIM/config/open5gs-gnb.yaml

sed -i 's|MNC|'$MNC'|g' /UERANSIM/config/open5gs-gnb.yaml
sed -i 's|MCC|'$MCC'|g' /UERANSIM/config/open5gs-gnb.yaml
sed -i 's|NR_GNB_IP|'$NR_GNB_IP'|g' /UERANSIM/config/open5gs-gnb.yaml
sed -i 's|AMF_IP|'$AMF_IP'|g' /UERANSIM/config/open5gs-gnb.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

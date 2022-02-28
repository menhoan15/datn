#!/bin/bash
export IP_ADDR=$(awk 'END{print $1}' /etc/hosts)

cp /mnt/ueransim/open5gs-ue.yaml /UERANSIM/config/open5gs-ue.yaml
sed -i 's|MNC|'$MNC'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|MCC|'$MCC'|g' /UERANSIM/config/open5gs-ue.yaml

NUM_OF_UE=$(echo $COMPONENT_NAME | grep -o -E '[0-9]+')
UE_KI="UE${NUM_OF_UE}_KI"
UE_OP="UE${NUM_OF_UE}_OP"
UE_AMF="UE${NUM_OF_UE}_AMF"
UE_IMEISV="UE${NUM_OF_UE}_IMEISV"
UE_IMEI="UE${NUM_OF_UE}_IMEI"
UE_IMSI="UE${NUM_OF_UE}_IMSI"

sed -i 's|UE1_KI|'${!UE_KI}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|UE1_OP|'${!UE_OP}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|UE1_AMF|'${!UE_AMF}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|UE1_IMEISV|'${!UE_IMEISV}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|UE1_IMEI|'${!UE_IMEI}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|UE1_IMSI|'${!UE_IMSI}'|g' /UERANSIM/config/open5gs-ue.yaml
sed -i 's|NR_GNB_IP|'$NR_GNB_IP'|g' /UERANSIM/config/open5gs-ue.yaml

# Sync docker time
#ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

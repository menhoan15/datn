#!/bin/bash
if [[ -z "$COMPONENT_NAME" ]]; then
	echo "Error: COMPONENT_NAME environment variable not set"; exit 1;
elif [[ "$COMPONENT_NAME" =~ ^(ueransim-gnb-[[:digit:]]+$) ]]; then
	echo "Deploying component: '$COMPONENT_NAME'"
	/mnt/ueransim/open5gs_gnb_init.sh && \
	./nr-gnb -c ../config/open5gs-gnb.yaml & \
	bash
elif [[ "$COMPONENT_NAME" =~ ^(ueransim-ue-[[:digit:]]+$) ]]; then
	echo "Deploying component: '$COMPONENT_NAME'"
	/mnt/ueransim/open5gs_ue_init.sh && \
	./nr-ue -c ../config/open5gs-ue.yaml & \
	bash
else
	echo "Error: Invalid component name: '$COMPONENT_NAME'"
fi

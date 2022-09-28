#!/bin/bash
yc compute instance create \
	--name reddit-app-full \
	--hostname reddit-app-full \
	--memory=4 \
	--create-boot-disk image-id=fd84ftnqrgnjafcjc11i \
	--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
	--metadata serial-port-enable=1 \
	--metadata-from-file user-data=D:/OTUS/AleksandrKucepalov_infra/config-scripts/metadata.yaml

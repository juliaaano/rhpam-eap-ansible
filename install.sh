#!/bin/bash

set -euxo pipefail

DOWNLOADS_DIR=./downloads
DOWNLOADS_URL=https://s3-ap-southeast-2.amazonaws.com/public.juliaaano
JBOSS_EAP_ZIP=jboss-eap-7.2.0.zip
RHDM_CENTRAL_ZIP=rhdm-7.3.0-decision-central-eap7-deployable.zip

MODE=${1:-online}

mkdir -p $DOWNLOADS_DIR

if [ $MODE != "offline" ]; then
    curl -o $DOWNLOADS_DIR/$JBOSS_EAP_ZIP $DOWNLOADS_URL/$JBOSS_EAP_ZIP
    curl -o $DOWNLOADS_DIR/$RHDM_CENTRAL_ZIP $DOWNLOADS_URL/$RHDM_CENTRAL_ZIP
fi

rm -rf ./target

unzip -qo $DOWNLOADS_DIR/$JBOSS_EAP_ZIP -d ./target
unzip -qo $DOWNLOADS_DIR/$RHDM_CENTRAL_ZIP -d ./target

echo "end of script"


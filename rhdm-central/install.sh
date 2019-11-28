#!/bin/bash

set -uxo pipefail

source config.sh

DOWNLOADS_DIR=${1:-$DOWNLOADS_DIR}
INSTALLATION_DIR=${2:-$INSTALLATION_DIR}
RHDM_CENTRAL_ZIP=${3:-$RHDM_CENTRAL_ZIP}
JBOSS_EAP_ZIP=${4:-$JBOSS_EAP_ZIP}

rm -rf ./target

unzip -qo $DOWNLOADS_DIR/$JBOSS_EAP_ZIP -d $INSTALLATION_DIR
unzip -qo $DOWNLOADS_DIR/$RHDM_CENTRAL_ZIP -d $INSTALLATION_DIR

echo "end of script" > /dev/null

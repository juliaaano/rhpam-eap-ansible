#!/bin/bash

set -uxo pipefail

source config.sh

PATCH_DIR=${1:-$DOWNLOADS_DIR}
PATCH_URL=${2:-$DOWNLOADS_URL}
JBOSS_EAP_PATCH_ZIP=${3:-$JBOSS_EAP_PATCH_ZIP}
JBOSS_EAP_HOME=${4:-$JBOSS_EAP_HOME}

for patch in ${JBOSS_EAP_PATCH_ZIP[@]}
do
    $JBOSS_EAP_HOME/bin/jboss-cli.sh --command="patch apply $PATCH_DIR/$patch"
done

echo "end of script" > /dev/null

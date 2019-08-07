#!/bin/bash

set -euxo pipefail

PATCH_DIR=$(pwd)/downloads
PATCH_URL=https://s3-ap-southeast-2.amazonaws.com/public.juliaaano
JBOSS_PATCH01_ZIP=jboss-eap-7.2.1-patch.zip
JBOSS_PATCH02_ZIP=jboss-eap-7.2.2-patch.zip
JBOSS_DIR=./target/jboss-eap-7.2

MODE=${1:-online}

mkdir -p $PATCH_DIR

if [ $MODE != "offline" ]; then
    curl -o $PATCH_DIR/$JBOSS_PATCH01_ZIP $PATCH_URL/$JBOSS_PATCH01_ZIP
    curl -o $PATCH_DIR/$JBOSS_PATCH02_ZIP $PATCH_URL/$JBOSS_PATCH02_ZIP
fi

$JBOSS_DIR/bin/jboss-cli.sh --command="patch apply $PATCH_DIR/$JBOSS_PATCH01_ZIP"
$JBOSS_DIR/bin/jboss-cli.sh --command="patch apply $PATCH_DIR/$JBOSS_PATCH02_ZIP"

echo "end of script"


#!/bin/bash

set -euxo pipefail

DOWNLOADS_DIR=./downloads
DOWNLOADS_URL=https://s3-ap-southeast-2.amazonaws.com/public.juliaaano
JBOSS_EAP_ZIP=jboss-eap-7.2.0.zip
JBOSS_EAP_DIR=./target/jboss-eap-7.2
RHDM_SERVER_ZIP=rhdm-7.3.0-kie-server-ee8.zip

mkdir -p $DOWNLOADS_DIR

curl -o $DOWNLOADS_DIR/$JBOSS_EAP_ZIP $DOWNLOADS_URL/$JBOSS_EAP_ZIP
curl -o $DOWNLOADS_DIR/$RHDM_SERVER_ZIP $DOWNLOADS_URL/$RHDM_SERVER_ZIP

rm -rf ./target

unzip -qo $DOWNLOADS_DIR/$JBOSS_EAP_ZIP -d ./target
unzip -qo $DOWNLOADS_DIR/$RHDM_SERVER_ZIP -d ./target
mv ./target/SecurityPolicy/* $JBOSS_EAP_DIR/bin/ && rmdir ./target/SecurityPolicy
mv ./target/kie-server.war $JBOSS_EAP_DIR/standalone/deployments/
touch $JBOSS_EAP_DIR/standalone/deployments/kie-server.war.dodeploy

echo "end of script"


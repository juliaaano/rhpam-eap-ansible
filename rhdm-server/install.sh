#!/bin/bash

set -uxo pipefail

source config.sh

DOWNLOADS_DIR=${1:-$DOWNLOADS_DIR}
INSTALLATION_DIR=${2:-$INSTALLATION_DIR}
RHDM_SERVER_ZIP=${3:-$RHDM_SERVER_ZIP}
JBOSS_EAP_ZIP=${4:-$JBOSS_EAP_ZIP}
JBOSS_EAP_HOME=${5:-$JBOSS_EAP_HOME}

rm -rf ./target

unzip -qo $DOWNLOADS_DIR/$JBOSS_EAP_ZIP -d $INSTALLATION_DIR
unzip -qo $DOWNLOADS_DIR/$RHDM_SERVER_ZIP -d $INSTALLATION_DIR
mv ./target/SecurityPolicy/* $JBOSS_EAP_HOME/bin/ && rmdir ./target/SecurityPolicy
mv ./target/kie-server.war $JBOSS_EAP_HOME/standalone/deployments/
touch $JBOSS_EAP_HOME/standalone/deployments/kie-server.war.dodeploy

echo "end of script" > /dev/null

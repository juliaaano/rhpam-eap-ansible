#!/bin/bash

set -uxo pipefail

source config.sh

JBOSS_EAP_HOME=${1:-$JBOSS_EAP_HOME}
KIESERVER_USR=${1:-$KIESERVER_USR}
KIESERVER_PWD=${2:-$KIESERVER_PWD}

$JBOSS_EAP_HOME/bin/add-user.sh -a --user $KIESERVER_USR --password $KIESERVER_PWD --role kie-server

echo "end of script" > /dev/null

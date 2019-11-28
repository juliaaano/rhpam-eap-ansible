#!/bin/bash

set -uxo pipefail

source config.sh

JBOSS_EAP_HOME=${1:-$JBOSS_EAP_HOME}
ADMIN_USR=${1:-$ADMIN_USR}
ADMIN_PWD=${2:-$ADMIN_PWD}
CONTROLLER_USR=${3:-$CONTROLLER_USR}
CONTROLLER_PWD=${4:-$CONTROLLER_PWD}

$JBOSS_EAP_HOME/bin/add-user.sh -a --user $ADMIN_USR --password $ADMIN_PWD --role admin
$JBOSS_EAP_HOME/bin/add-user.sh -a --user $CONTROLLER_USR --password $CONTROLLER_PWD --role rest-all

echo "end of script" > /dev/null

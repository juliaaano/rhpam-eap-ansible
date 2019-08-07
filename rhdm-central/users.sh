#!/bin/bash

set -euxo pipefail

JBOSS_HOME=./target/jboss-eap-7.2
ADMIN_USR=${1:-adminUser}
ADMIN_PWD=${2:-password}
CONTROLLER_USR=${3:-controllerUser}
CONTROLLER_PWD=${4:-password}

$JBOSS_HOME/bin/add-user.sh -a --user $ADMIN_USR --password $ADMIN_PWD --role admin
$JBOSS_HOME/bin/add-user.sh -a --user $CONTROLLER_USR --password $CONTROLLER_PWD --role rest-all

echo "end of script"


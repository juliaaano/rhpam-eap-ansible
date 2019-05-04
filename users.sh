#!/bin/bash

set -euxo pipefail

JBOSS_HOME=./target/jboss-eap-7.2
ADMIN_USER=${1:-adminUser}
ADMIN_PWD=${2:-password}
CONTROLLER_USER=${3:-controllerUser}
CONTROLLER_PWD=${4:-password}

$JBOSS_HOME/bin/add-user.sh -a --user $ADMIN_USER --password $ADMIN_PWD --role admin
$JBOSS_HOME/bin/add-user.sh -a --user $CONTROLLER_USER --password $CONTROLLER_PWD --role rest-all

echo "end of script"


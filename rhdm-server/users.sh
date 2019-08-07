#!/bin/bash

set -euxo pipefail

JBOSS_HOME=./target/jboss-eap-7.2
KIESERVER_USR=${1:-kieserverUser}
KIESERVER_PWD=${2:-password}

$JBOSS_HOME/bin/add-user.sh -a --user $KIESERVER_USR --password $KIESERVER_PWD --role kie-server

echo "end of script"


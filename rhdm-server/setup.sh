#!/bin/bash

set -uxo pipefail

source config.sh

JBOSS_EAP_HOME=${1:-$JBOSS_EAP_HOME}

$JBOSS_EAP_HOME/bin/jboss-cli.sh --properties=setup.properties --file=setup.cli

echo "end of script" > /dev/null

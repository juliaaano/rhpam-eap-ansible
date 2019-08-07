#!/bin/bash

set -euxo pipefail

JBOSS_HOME=./target/jboss-eap-7.2

$JBOSS_HOME/bin/jboss-cli.sh --properties=setup.properties --file=setup.cli

SUCCESS="end of script"

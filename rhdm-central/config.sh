#!/bin/bash

DOWNLOADS_URL=https://s3-ap-southeast-2.amazonaws.com/public.juliaaano
DOWNLOADS_DIR=./downloads
INSTALLATION_DIR=./target
RHDM_CENTRAL_ZIP=rhdm-7.5.0-decision-central-eap7-deployable.zip
JBOSS_EAP_ZIP=jboss-eap-7.2.0.zip
JBOSS_EAP_PATCH_ZIP="jboss-eap-7.2.1-patch.zip jboss-eap-7.2.2-patch.zip jboss-eap-7.2.3-patch.zip jboss-eap-7.2.4-patch.zip"

JBOSS_EAP_HOME=${INSTALLATION_DIR}/jboss-eap-7.2

ADMIN_USR=${1:-adminUser}
ADMIN_PWD=${2:-password}
CONTROLLER_USR=${3:-controllerUser}
CONTROLLER_PWD=${4:-password}

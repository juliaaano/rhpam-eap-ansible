#!/bin/bash

DOWNLOADS_URL=https://s3-ap-southeast-2.amazonaws.com/public.juliaaano
DOWNLOADS_DIR=./downloads
INSTALLATION_DIR=./target
RHDM_SERVER_ZIP=rhdm-7.4.0-kie-server-ee8.zip
JBOSS_EAP_ZIP=jboss-eap-7.2.0.zip
JBOSS_EAP_PATCH_ZIP="jboss-eap-7.2.1-patch.zip jboss-eap-7.2.2-patch.zip jboss-eap-7.2.3-patch.zip jboss-eap-7.2.4-patch.zip"

JBOSS_EAP_HOME=${INSTALLATION_DIR}/jboss-eap-7.2

KIESERVER_USR=${1:-kieserverUser}
KIESERVER_PWD=${2:-password}

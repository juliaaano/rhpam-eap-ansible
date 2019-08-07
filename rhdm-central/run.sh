#!/bin/bash

./target/jboss-eap-7.2/bin/standalone.sh -c standalone-full.xml -b 0.0.0.0 $@


# Red Hat Decision Server

As known as the KIE Server.

For Decision Central see [rhdm-central](../rhdm-central).

## Quick Start

Download software:
```
./download.sh
```

 Install JBoss EAP and RHDM Server:
 ```
 ./install.sh
 ```

Apply patches:
```
./patch.sh
```

 Add 'kieserver' user:
 ```
 ./users.sh
 ```

Review the setup.properties file and run:
```
./setup.sh
```

Create a keystore to store the controller's credentials:
```
keytool -importpassword -keystore sampleKeystore.jceks -storepass sampleStorepass -alias controllerUserAlias -keypass controllerUserKeypass -storetype JCEKS
```

Start the server:
```
./run.sh
```

Start the server with port offset (to avoid port conflict):
```
./run.sh -Djboss.socket.binding.port-offset=100
```

## Configuration

Check the configuration in the **config.sh** file.

## Run as a service

* [Source Red Hat](https://access.redhat.com/documentation/en-us/red_hat_jboss_enterprise_application_platform/7.2/html/installation_guide/configuring_jboss_eap_to_run_as_a_service)

```
export JBOSS_HOME=/home/ec2-user/rhdm-server/target/jboss-eap-7.2
echo "JBOSS_HOME=\"${JBOSS_HOME}"" >> jboss-eap.conf
echo "JBOSS_USER=ec2-user" >> jboss-eap.conf
echo "JBOSS_CONFIG=standalone-full.xml" >> jboss-eap.conf
echo "JBOSS_OPTS=\"-b 0.0.0.0\"" >> jboss-eap.conf
sudo mv jboss-eap.conf /etc/default/
sudo cp ${JBOSS_HOME}/bin/init.d/jboss-eap-rhel.sh /etc/init.d/
sudo chmod +x /etc/init.d/jboss-eap-rhel.sh
sudo chkconfig --add jboss-eap-rhel.sh
sudo chkconfig jboss-eap-rhel.sh on
sudo service jboss-eap-rhel start
```

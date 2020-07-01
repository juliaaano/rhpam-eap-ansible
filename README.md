# Red Hat Decision Manager Ansible Installation

Ansible playbook to install Decision Manager in multiple flavours.

1. Check out the main playbook [site.yml](site.yml) for the plays.
2. Review the variables in groups_vars to tune the installation.
3. Assign hosts to the right group in the [hosts](hosts) inventory file.

```
ansible-playbook -i hosts site.yml
```

* JBoss EAP, RHPAM distros and versions are kept in the role's defaults variables.

### A quickstart project

Once you have the setup up and running, you can import in Central the following project to try it out:

* https://github.com/juliaaano/rhpam-quickstart

### General Advice

Start and stop the JBoss systemd service:

```
ansible -i ./hosts managed --become -m service -a "name=jbosseap7 state=stopped"
ansible -i ./hosts managed --become -m service -a "name=jbosseap7 state=started"
```

Enable DEBUG or change the log level:

```
ansible -i ./hosts unmanaged -m shell -a "$JBOSS_EAP_HOME/scripts/change-log-level.sh org.kie DEBUG"
ansible -i ./hosts unmanaged -m shell -a "$JBOSS_EAP_HOME/scripts/change-log-level.sh org.eclipse DEBUG"
ansible -i ./hosts central -m shell -a "$JBOSS_EAP_HOME/scripts/change-log-level.sh org.drools DEBUG"
ansible -i ./hosts central -m shell -a "$JBOSS_EAP_HOME/scripts/change-log-level.sh org.guvnor DEBUG"
ansible -i ./hosts central -m shell -a "$JBOSS_EAP_HOME/scripts/change-log-level.sh org.uberfire DEBUG"
```

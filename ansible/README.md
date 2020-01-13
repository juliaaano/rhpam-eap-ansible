# Red Hat Decision Manager Ansible Installation

Ansible playbook to install Decision Manager in multiple flavours.

1. Check out the main playbook [site.yml](site.yml) for the plays.
2. Review the variables in groups_vars to tune the installation.
3. Assign hosts to the right group in the [hosts](hosts) inventory file.

```
ansible-playbook -i hosts site.yml
```

* JBoss EAP, RHDM distros and versions are kept in the role's defaults variables.

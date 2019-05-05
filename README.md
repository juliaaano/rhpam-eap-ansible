# Red Hat Decision Server

As known as the KIE Server.

## Quick Start
```
./install.sh
./users.sh
```

Review the setup.properties file and run:
```
./setup.sh
```

Start the server:
```
./run.sh
```

Start the server with port offset (to avoid port conflict):
```
./run.sh -Djboss.socket.binding.port-offset=100
```

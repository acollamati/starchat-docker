# Starchat-docker

This is the repository for docker-compose containerized [StarChat](https://github.com/GetJenny/starchat), a scalable conversational engine for B2B applications provided by [GetJenny](https://getjenny.com)

# Content of the repository

* **docker-compose.yml**: a docker compose file where you can configure binding port and addresses,
enable/disable services etc.
See [Docker compose documentation](https://docs.docker.com/compose).
* **starchat/config/application.conf**: the configuration file for StarChat,
among the other things here you can configure the language and the passphrase for the TSL certificate
if you plan to use SSL.
* each service folder exports the volumes with the logs in order to access them from the outside
of the container.

# How to run StarChat

To run StarChat just install docker and run

```bash
docker-compose up
```

For the daemon mode use:

```bash
docker-compose up -d
```

After the service are up and running you will need to initialize StarChat (more about StarChat on the [documentation](https://getjenny.github.io/starchat-doc))

## Troubleshooting

Problems (e.g. `max virtual memory areas ....`)? Have a look at the [troubleshootig](https://getjenny.github.io/starchat-doc/#troubleshooting) section in the documentation.

# How to contribute

To contribute to StarChat, please send us a [pull request](https://help.github.com/articles/using-pull-requests/#fork--pull) 
from your fork of this repository!

Our concise [contribution guideline](https://github.com/GetJenny/starchat/blob/master/CONTRIBUTING.md) contains the bare
minumum requirements of the code contributions.


# Deploy

This repository contains only those few files which are nesessary to deploy the hole E-catalog project on your machine.
Follow those steps:

- clone this repository on your machine;
- install **Docker** if it's not installed yet - **Docker Compose** will be automatically installed with it;
- create your own *.env file* in the root of the repository - use *.env.default* as a template;
- start Docker Compose with the following command
  
```bash, PowerShell, CMD
docker-compose up -d
```

Docker Compose will pull all three containers - database, backend and frontend - than build and start them. Containers will be connected to each other through an inner network. Web application will use the machine ip address, local or public.

Use `docker-compose ps` to see the list of containers and their status. You may also use `docker-compose logs [container name]` to see the details.

To read more about Docker and Docker Compose see [docker docs](https://docs.docker.com/compose/).

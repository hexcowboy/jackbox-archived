# JackBox

A super-tiny (less than 1GB) docker container that provides penetration testing tools. Jackbox takes less than 1 minute to setup and is persistent between sessions.

## Quickstart
Follow instructions for [downloading and installing Docker](https://docs.docker.com/get-docker/) on you host machine. If your host machine is Linux then you will also need to [install Docker Compose](https://docs.docker.com/compose/install/).

Clone the repository:
```bash
git clone https://github.com/jackno/jackbox.git
cd jackbox
```

Build and setup the box:
```bash
docker-compose build
docker-compose run jackbox setup
# Follow the prompt
docker-compose up jackbox
```

## Cleanup
When you're done using JackBox you can stop the docker container. **Data in the `/var`, `/home`, and `/etc` paths are persistent, but nothing else is.**

Close out your session:
```bash
docker-compose down jackbox
```

The following will completely reset your persistence. **Make sure you back up any data before running this command**:
```bash
docker-compose down jackbox -v
```

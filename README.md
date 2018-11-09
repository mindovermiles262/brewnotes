# Brew Notes Wiki

A customized version of MediaWiki

## Setup

### From Docker Hub:

This project is contained in a single docker image. To deploy:

1. Pull Docker Image:

`docker pull mindovermiles262/brewnotes:latest`

2. Start the container
```
docker start \
  -d \
  --name local-container-name \
  -p [localport]:80
  mindovermiles262/brewnotes:latest
```

For example:

`docker run -d --name wiki -p 8080:80 mindovermiles262/brewnotes:latest`

will start the docker container, named "wiki" on local port 8080.

You could visit it at [http://localhost:8080](http://localhost:8080)

### Building the image yourself:

1. Clone this repo

2. Build the container:

`docker build -t brewnotes:latest .`

3. Start the container: See #2 above



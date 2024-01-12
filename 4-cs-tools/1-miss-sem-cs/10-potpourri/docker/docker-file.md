# Docker

Containers are instances of images.
Docker engine is made up of CLI, REST API and Docker daemon.

## DockerFile

### hello world

```shell
docker container run hello-world
```

### build image

```Dockerfile
FROM alpine:latest
WORKDIR /usr/src/app
COPY hello.sh .
CMD sh hello.sh

```

```shell
# Build docker image, with image name as script-app
docker build . -t script-app  
```

### show images

```sh
docker images
```

### remove images

```sh
# mongo is the container name
docker image rm mongo
```

### run container

```sh
## new container
docker run --name script-container -it script-app

## run existing container
docker run -it script-app sh
```

## Docker compose

### Rebuild container

```sh
docker-compose up -d --no-deps --build 
```

### remove container

```sh
docker-compose down 
```

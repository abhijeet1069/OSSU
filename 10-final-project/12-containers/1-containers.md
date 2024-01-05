# Docker

## Containers and Images

A container is a runtime instance of an image.

## docker run

``` shell  
# docker run creates and starts a new container from an image
docker container run -it ubuntu bash 
```

## docker exec

```shell
# docker exec interacts with an already running container
docker exec -it nifty_franklin bash
```

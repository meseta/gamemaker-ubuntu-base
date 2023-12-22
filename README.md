# Docker images for Gamemaker Ubuntu
This is an ubuntu20-based image containing necessary libraries to run GM Ubuntu build games in a headless way.

* [Github](https://github.com/meseta/gamemaker-ubuntu-base)
* [Dockerhub](https://hub.docker.com/r/meseta/gmrunner_base)

To use, create your own Dockerfile that inherits from this base image, and copy your compiled gamemaker game into it.

```dockerfile
FROM meseta/gmrunner_base:v1.1.0

COPY . .

CMD ["./yourgame"]
```

## Version History
* v1.1.0 Update to Ubuntu 20.04 LTS base
* v1.0.0 initial version Ubuntu 18.04
# Docker images for Gamemaker Ubuntu

Links:
* [Github](https://github.com/meseta/gamemaker-ubuntu-base)
* [DockerHub](https://hub.docker.com/r/meseta/gmrunner_base)

This is an ubuntu22-based image containing necessary libraries to run GM Ubuntu build games in a headless way.

To use, create your own Dockerfile that inherits from this base image, and copy your compiled gamemaker game into it.

```dockerfile
FROM meseta/gmrunner_base:v1.1.0

WORKDIR /workdir
COPY yourapp.AppImage .

CMD ["./yourapp.AppImage", "--appimage-extract-and-run"]
```

## Version History
* v1.2.0 Update to Ubuntu 22.04 LTS base
* v1.1.0 Update to Ubuntu 20.04 LTS base
* v1.0.0 initial version Ubuntu 18.04
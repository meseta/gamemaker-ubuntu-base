# Docker images for Gamemaker Ubuntu

## Runner Base
This is an ubuntu18-based image containing necessary libraries to run GMS2.3+ Ubuntu build games in a headless way.

To use, create your own Dockerfile that inherits from this base image, and copy your compiled gamemaker game into it.

```dockerfile
FROM us.gcr.io/meseta/space-mmo/gamemaker-ubuntu-base:v1.0.0

COPY . .

CMD ["./yourgame"]
```

## Version History
### 1.0.0
* v1.0.0 initial version
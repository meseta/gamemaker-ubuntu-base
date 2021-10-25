#!/bin/bash

export DISPLAY=:0
Xvfb :0 -screen 0 800x600x24 &
exec "$@"
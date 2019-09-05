Inform 7 in Docker for Linux
----------------------------

I wanted to get back into writing [Inform 7](http://inform7.com) games, but was stumped by the fact that the most recent release is from 2015 and not installable on any system I currently use. What's a hacker to do?  Use [Docker](https://www.docker.com), of course!


Using the image
===============

The docker image is on [DockerHub](https://cloud.docker.com/repository/docker/katre/docker-inform).

To run Inform7, use the `inform7.sh` shell script:
```
$ ./inform7.sh
```

This script creates a directory to store save files in at `$HOME/Inform7`. Any files you access (story files or extensions) must be in this directory, or they will not be visible to Inform7 in the Docker image.

TODO: Currently, Inform7 settings cannot be modified. Looks like some helper program is missing.

Building the image
==================

The image rebuilds automatically on DockerHub when this repository is updated.


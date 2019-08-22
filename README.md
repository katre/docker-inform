Inform 7 in Docker for Linux
----------------------------

I wanted to get back into writing [Inform 7](http://inform7.com) games, but was stumped by the fact that the most recent release is from 2015 and not installable on any system I currently use. What's a hacker to do?  Use [Docker](https://www.docker.com), of course!


Using the image
===============

TODO: Add directions once the image is on Dockerhub or something.

TODO: Set up directories.

Once the image is fetched, run the following:
```
docker run \
  -it \
  --rm \
  -env DISPLAY=${DISPLAY} \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  inform7
```

The `DISPLAY` and `/tmp/.X11-unix` bits allow Docker to use your current X Windows session. The `--volume` bit makes sure your files are stored on your actual local system.

Building the image
==================

To rebuild the image, run the following:

```
wget http://inform7.com/apps/6M62/gnome-inform7_6M62-0ubuntu1_amd64.deb
docker build -t inform7 .
```

TODO: Push to dockerhub?


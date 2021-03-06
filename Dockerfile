FROM ubuntu:xenial

# Install needed software.
RUN apt-get update && apt-get install -y \
  curl \
  libcairo2 \
  libgdk-pixbuf2.0-0 \
  libglib2.0-0 \
  libgoocanvas3 \
  libgstreamer1.0-0 \
  libgtk2.0-0 \
  libgtksourceview2.0-0 \
  libgtkspell0 \
  libjavascriptcoregtk-1.0-0 \
  libwebkitgtk-1.0-0 \
  dconf-gsettings-backend \
  dbus-x11
RUN curl http://inform7.com/apps/6M62/gnome-inform7_6M62-0ubuntu1_amd64.deb \
  --output /tmp/gnome-inform7.deb
RUN dpkg --install /tmp/gnome-inform7.deb

RUN useradd -ms /bin/bash informer
USER informer
WORKDIR /home/informer

RUN mkdir Inform

CMD gnome-inform7

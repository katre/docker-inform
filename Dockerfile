FROM ubuntu:xenial

# Install needed software.
RUN apt-get update
RUN apt-get install -y \
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
  dconf-gsettings-backend
ADD gnome-inform7_6M62-0ubuntu1_amd64.deb /tmp/gnome-inform7_6M62-0ubuntu1_amd64.deb
RUN dpkg --install /tmp/gnome-inform7_6M62-0ubuntu1_amd64.deb

RUN useradd -ms /bin/bash informer
USER informer
WORKDIR /home/informer

RUN mkdir Inform7

CMD gnome-inform7

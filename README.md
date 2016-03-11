XLRelease
=========
Quick start (local) version of XLRelease for testing purposes.

The Dockerfile was blantanly copied from https://github.com/adriaandejonge/docker-xlr.
The Vagrantfile was inspired by the Dockerfile :)

Vagrant
-------
`vagrant up`

Go to: http://192.168.9.15:5516/

Docker
------
Build

 `docker build -t xlr481 .`

Run

 `docker run -p 5516:5516 -p 55555:55555 xlr481`

Go to: http://[docker-machine ip]:5516/

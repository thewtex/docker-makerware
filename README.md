Docker for Makerware
====================

This project provides a [Dockerfile](https://docs.docker.com/reference/builder/) allowing to easily build a container and then run [makerware](https://www.makerbot.com/desktop).

Additionally, on system that uses the Nvidia proprietary driver, the [run.sh](https://github.com/thewtex/docker-opengl-nvidia/blob/master/run.sh) script allow to run the container providing access to the local X display.



To build the container:

```
sudo docker build -t my_makerware 
```


To run makerware accessing local display (Nvidia driver required):

```
./run.sh -v ~:/home:ro my_makerware
```

This last command will:

1. setup the local display sharing
2. mount the host home `~` directory into `/home` directory within the container
3. start `makerware`

Licensing
---------

Materials in this repository are distributed under the following licenses:

  All software is licensed under the Apache 2.0 License.
  See `LICENSE` file for details.

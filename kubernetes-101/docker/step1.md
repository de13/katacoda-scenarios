## Run your first app

It's time to launch your first application

`docker run --name test nginx`{{execute}}

Then press **^C** to escape.

### What has happened?

- We used Docker to launch our first application (nginx).
- Docker did not find the image locally
- Docker has made a sweater of the image since the Registry
- 3 layers have been downloaded and decompressed
- Docker then executed the runtime of the image in the foreground, displaying the logs in stdout

Did you notice the image tag?

## Let's use some options

### Background

Having the container in foreground is not very useful, let's start by turning it in background with the **-d** option:

`docker run -d --name nginx nginx `{{execute}}

We have in return the hash of the container, which allows us to identify it.

### List the containers

To list the containers of our machine, we use **docker ps**:

`docker ps`{{execute}}

We find our container nginx whose ID starts with the first 12 characters of our hash.

Docker has given him a random name and we can see that he is running.

The containers are not always UP, so we need a command to list also those who are not running, and for that we use **docker ps -a**:

`docker ps -a`{{execute}}

We find the container that we had launched in foreground, which is in status **Exited**.

### List the different resources of Docker

The list of containers on the machine is not the only list suscesptible to interest us. For example, we can also see the images:

`docker images`{{execute}}

This is the image that serves our container. As you can see, we use the same image for both containers, thanks to CoW, which allows containers that run the same image to have a really tiny footprint on the machine. This is important for optimizing execution time, saving disk space, and having a really large application density.

We can also list the volumes, even if for the moment we do not have any:

`docker volume list`{{execute}}

A volume is what allows us to store data persistently in Docker.

### Delete resources

Creating resources is very easy, but you must also be able to delete them with the same simplicity.

To remove a container, a simple **docker rm** is enough:

`docker rm test`{{execute}}

The command has removed the exited container, unsurprisingly. However what would happen if we tried to delete the running container?

`docker rm nginx`{{execute}}

Docker refuses to delete it unless it's stopped, or to force it to be removed.

`docker stop nginx`{{execute}}

Once the container is stopped, it is in exited state, and we know that we can delete it in this state.

But we can use **docker containers prune** command to remove all exited containers at the same time.

`docker container prune`{{execute}}

The image, meanwhile, remained intact:

`docker images`{{execute}}

However, we can also choose to delete it with **docker rmi** (rm image):

`docker rmi nginx:latest`{{execute}}

The image and its different layers is no longer present on the disc. If we need it again, Docker will have to pull it from the registry. This is an action that we can also do manually, to reduce the latency of the next boot of our container:

`docker pull nginx`{{execute}}
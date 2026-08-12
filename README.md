# Docker

Docker is a tool which use process isolation, -- it removing the dependency that an application has underling the operating system and it is directly enabling on the docker engine

A software which we can create container

# Hypervisor

Docker will run on 3 stages  BUILD >> SHIP >> RUN


Docker is a tool for implementing containers

# Virtualization
=================

Here we have a bear metal (hardware) on top of which we install the host os on the host os we can install a software called hypervisor (VMware , exsi, citrix zen, Microsoft hyper v, on the hyper visor we can install guest opening systems and on the guest OS we can install the applications which we want

This feature enables us to run multiple OS on one single Server, the disadvantage is this applications have to pass through multiple layers in order to access the hardware resources,


# Docker
========
Here we have a bear metal (hardware) on top of which we install the host os on the host os we can install a software called Docker engine, and on the docker engine we can install the application that we required this application pass through less number of layers in order to access the resources

Docker performers process isolation that is it removes the dependency that an application has on the underlining operating system and it all these applications to run directly on top of docker engine.

Docker can spin up the necessary environment development, testing, production etc..., in relatively very less amount of time and fixed hardware allocation is not done  for docker due to this reason on the run time the containers can use required amount of hardware resources based on their usage.

Docker can be used at all the three stages of build, ship & run, That is Development >> Testing >> Production

Docker comes in two flavors Community edition & Enterprise edition.

Docker image -- Combination of binaries & libraries which is necessary for software application.


# Installing Docker in Windows
==============================

1 Download docker for windows ------> Install it
2 Once docker is installed we can execute docker commands from the power shell

Note : Docker can be installed only on windows 10 prof 64 bit version or windows 2017 server edition

Note : Once docker is insalled on windows it will activate an application called HyperV. Once this application is activated it will not allow any other virtualization S/W (VMware, oracle virtual box etc) to run.

 
# Installing Docker on Linux
============================

1 Open get.docker.com  -----> copy those two commands and paste in Linux machine

	curl -fsSL https://get.docker.com -o install-docker.sh
	sh install-docker.sh        or         sh get-docker.sh

do it from root user


# Docker Images
===============

An image is a combination of binaries and libraries which are necessary for a specific software application

# Containers
============

Running instance of an image is called as a container
Any number of containers can be created from one image

Docker host --- The operating system on which docker is installed is called as the docker host.

Docker client --- This is a bag round software which accepts the docker commands and passes them to another baground process called as the docker deamon

Docker deamon --- This process accepts the commands coming from docker client and routes them to either docker images or containers or the docker registry.

Docker registry --- This is a repository where we can store docker images, this is of two types Public & Private

Public registry is hub.docker.com and this is maintained by the docker corporation.
Private registry is created within out own servers and only our team members can access it.
=================================================================================================================


# Important Docker Commands
===========================

Working on Images
----------------------

1.	To download a docker images
		docker pull image_name

2.	 To upload a docker image
		docker push image_name

3.	To see the list of docker images present in out docker host
		docker images or docker image ls

4.	 To delete a docker image
		docker rmi image_id/image_name

5.	 To create docker image from a container
		docker commit container_id/ container _name new _image_name

6.	 To create a docker image from a docker file
		docker build -t new_image_name
		note . represents current working directory

7.	 To delete all unused docker images
		docker system prune -a

8.	 To save a docker image as a tar or archived file
		docker save image1 image2 ...

9	 To get detailed info about a docker image
		docker image inspect image_name / image_id

Working on containers
-------------------------------

10.	To see the list running containers
		docker containers ls

11.	To see the list of all containers (running and stopped)
		docker ps -a

12.	To start a stopped containers
		docker start container_name / container_id

13.	To stop a running container
		docker stop container_name / container_id

14.	To restart a container
		docker restart container_name / container_id
	To restart after 20 seconds
		docker restart -t 20 container_name / container_id

15.	To delete a stopped container
		docker rm container_name / container_id

16.	To delete a running container
		docker rm -f container_name / container_id

17.	To stop all running container
		docker stop $(docker ps -aq)

18.	To delete all stopped containers
		docker rm $(docker ps -aq)

19.	To delete all containers (running & stopped)
		docker rm -f $(docker ps -aq)

20.	To get detailed logs of a container
		docker logs container_name / container_id

21.	To see complete info about a container
		docker inspect container_name / container_id

22.	To see the ports used by a container
		docker port container_name / container_id

23.	To come out of a container without exit
		ctrl+p , ctrl+q

24.	To go back into the same container
		docker attach container_name / container_id

25.	To create  a container
		docker run image_name
		run command options
		------------------------
		--name Gives a name to the container
		-d 			Run the container in detached mode in background (as a demon)
		-it			Used for opening interactive terminal in the container
		--link		Used for linking multiple containers to create micro services architecture
		--network 	Used for running containers on a specific network
		-e			Used for passing environment to container
        	--volumes 	from used for sharing between containers
		-p			Used for port mapping le it will map the container port with the docker host port so that it can be used for external communication
		Eg: -p 8080:80 here 80 is the container port and is called as internal port and 8080 is docker host port and it is called as external port

		-p			Used for automatic port mapping, The internal port of the container will be automatically mapped with some port on docker host which is greater than 30000

		-m			Used for specifying an upper limit on the memory that the container can use

		-c			used to allocate specific number of cpu's to a container
	
		-h			Used for specifying a host name for the container
	
		-rm			To delete a container on exit

	To enter into the container
		docker exec -it container_name/contauiner_id
	
	
Working on docker networks
======================

26.	To see the list of al the docker networks
		docker network ls

27.	To create a new docker network
		docker network create --drive drive_name  network_name

28.	To get detailed info about a network
		docker network inspect network_name / network_id

29.	To delete a network
		docker network rm network_name / network_id

30.	To attach a running container to a network
		docker network connect network_name / network_id
								container_id / container_name

31.	To disconnect a container from a network
		docker network disconnect network_name / network_id
								container_id / container_name


Three types of networks in docker
-----------------------------------

1.	Bridge:	A default network which can create own virtual network and communicate with each other no connection to host machine

2.	Host:	They will take the network from the host so there will be no isolation

3.	None:	There will no connectivity and no internet, till will use in some high security containers usage


Working on docker volumes
======================

32.	To see the list of docker volumes
		docker volume ls
	
33.	To create a volume
		docker volume create volume_name

34.	To get detailed info about a docker volume
		docker volume inspect volume_name / volume_id

35.	To delete a volume
		docker volume rm volume_name / volume_id

===========================================


Start container in detached mode

map the container port 8080 with host port ----

docker run --name webserver -p 5050:8080 -d image name

To access the home page of tomcat
a)	Launch any browser
b)	Public_ip_of_dockerhost: 5050

===========================================

Start jenkins as a container & name it devserver, map 8080 Jenkins container with the host

docker run --name devserver -p 6060:8080 -d Jenkins

To access the home page of Jenkins
a)	Launch any browser
b)	Public_ip_of_dockerhost: 6060


==============================================


Start nginx as a container in detached mode and perform automatic port maping

docker run --name appserver -p -d nginx

To identify the port used by nginx
docker port appserver

To access the home page of nginx
a)	Launch any browser
b)	Public_ip_of_dockerhost: host_port_captured_from_step2

=============================================

Start ubuntu as a container and open interactive terminal in it

docker run --name ubuntu u1 -it ubuntu

To come out of the container to the dockerhost
	type exit and press enter

==============================================

Start MySQL as a container and logging into the container and create tables

1.	Start MySQL as  a container
		docker run --name mydp -d -e mysql_root_password=tak-mysql

2.	To open interactive terminal in the container
		docker exec -it MySQL bash

3.	To login into the database as a root user
		MySQL -u root -p
		Enter password: -----------

4.	To see the list of tables
		shoe database;

5.	To move into a database
		use sys;

6.	To create emp and debt tables here
		open
		copy the code fro creating emp and dept tables and past in MySQL container

7.	To view the records of the tables
		select * from emo;
		select * from dept;

=======================================================

Creating Micro services Architecture

Multiple containers cab be linked with each other to create a multi container architecture this can be done in following ways

1.	Using --link option
2.	Docker compose
3.	Docker networking
4.	Using Python scripts


--link option
===========

This is a run command option which is used for creating a link between multiple containers and this option is deprecated.

Use Case
=======

Start two busybox containers b1& b2,	create a link between both of them

1.	Start a busy box container b1
		docker run --name b1 -it busybox				here -it is worked as interactive terminal we will enter inside the container

2.	Come out of the b1 container without exit
		ctrl+p, ctrl+q									these options is useful to come out of the container without closing it keeping it in the running state

3.	Start another busybox container b2 and link with b1
		docker run --name b2 -it --link b1:alias-b1 busybox		here we have created new container named it as b2 and using --link we have linked this with existing b1container making both will respond in the same time

4.	In the b2 container
		ping b1	(It should ping)							if we use this command it must show the ping of the both containers

=====================================================


Create a development environment where mysql container is linked with  a word press container

1.	Start MySQL as a container
		docker run --name mydb -d -e MySQL_ROOT_PASSWORD=sivadb mysql

2.	Start wordpress as  a container and link with the mysql container
		docker run --name mywordpress -d -p 8888:80 --link mydb:mysql wordpress

3.	To access the home page of wordpress
		launch any browser
		public-ip-of-dockerhost:8888
 
4.	Install wordpress

============================================================

Start Jenkins as a container and name it as devserver

Start two tomcat containers - one for QA server other for prod server

On this environment a Jenkins admin should be perform CI-CD

use case
---------

1.	Start Jenkins as a container
		docker run --name devserver -d -p 5050:8080 Jenkins

2.	To access the home page of Jenkins
		Launch any browser
		Public-ip-of-dockerhost:5050

3.	Star tomcat as a container and name it QA server
		docker run --name qaserver -d -p 6060:8080 --link devserver:jenkins tomcat

4.	To access the home page of tomcat qa server
		Launch any browser
		Public-ip-of-dockerhost:6060

5.	Start another tomcat container and name it prodserver
		docker run --name prodserver -d -p 7070:8080 --link devserver:jenkins tomcat

6.	To access the home page of tomcat prodserver
		Launch any browser
		Public-ip-of-dockerhost:7070

================================================================

use case
---------

Create lamp architecture where the operating system should be Linux data base should be MySQL, application server should be apache and programming language should be php

1.	Start MySQL as a container
		docker run --name mydb -d- e MYSQL_ROOT_PASSWORD=sivadb MySQL

2.	Start apache as a container and link with MySQL container
		docker run --name apache -d -p 9988:80 --link mydb:mysql httpd

3.	Start php as a container and link with MySQL and apache containers
		docker run --name php -d --link mydb:mysql --link apache:htpd php:7.2-apache

4.	To view the list of all the running containers
		docker container ls

=================================================================


use case
--------

Create master slave setup of Jenkins using docker containers

1.	Start Jenkins as a container
		docker run --name master -d -p Jenkins

2.	Start ubuntu as a container
		docker run --name slave -it --link master:jenkins ubuntu

3.	In the ubuntu(slave) container
	
	a)	update the apt repository
			apt get update
	
	b)	Install wget
			apt-get install -y wget

	c)	Download slave.jar file
			wget master:8080/jnlpjars.slave.jar

****Docker - Containers:****
Its isolation technology which is used to isolate the service and could be used, these containers will be connected or communicated with each other with the help of virtualized network.

***Architecture:***

Applications           --> app1, app2, app3
Containers             --> nginx, mango DB, node-js, 
Container Enginee      --> docker
OS                     --> HOST OS
Hardware               --> Hardware

****Docker:****
Its an open source for developing, shipping and running applications.
***Docker Platform:***
Its provides the ability to package and run an application in loosely isolated environment, called container.

***ARchitecture:***
Docker Client --> where we will execute commands of docker
Docker Host --> Where docker is running[docker daemon process] --> containers will be running here [comprises images and containers]
Registry --> Where docker images be stored

Note:
Docker host and docker client could be on same machine

Difference between Docker Compose and Docker Build:

Docker Build                               | Docker Compose
To run the image from dockerfile           | To run multiple images as service --> end result a web app or a database
docker build -t <image_name> <dockerfile>  | docker compose up -d 
requires dockerfile                        | requires docker-compose.yml
Used for image creation                    | Container orchestration
network is not relevant during the build     
of image                                   | Automatically setups the shared network for all defined services to communicate 
Ideal for creating service or base image   | Ideal for application where multiple services running is required
****Docker Commands:*****
To show the Docker images: docker images
To list the running images[containers]: docker ps 
To list all the ran images[containers]: docker ps -a 
To run the container: docker run image_name
    docker run --name <new_name> -d -p <host_port>:<container_port> <image_new> : To run the run with new_name in detached mode
To inspect the container: docker inspect <container_name> or docker inspect <image_id>
To build image from DockerFile : docker build -t <image_new> <path_of_DockerFile>
To Stop Container: docker stop <image_name>  or docker stop <container_id>
To remove containers: docker rm <container_id> or docker rm <image_name>
To remove images: docker rmi <image_id> --> you could get image from docker images command
To start the docker-compose: docker compose up -d 
To stop the docker-compose: docker compose down
To prune all stopped containers/clear off network/images without at least one container associated to them/all build cache: docker system prune -a
To list the containers running using docker compose: docker compose ps
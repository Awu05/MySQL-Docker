# MySQL-Docker
My first look at using MySQL in a Docker container.


# Steps to use
1) Clone repo and cd inside
2) Run `docker-compose up -d` to start the docker container detached (Note: Docker must be installed)
3) Run `docker container ls` to see all the running containers
4) Run `docker container exex -it container_id bash` to make a connection to the containers commandline
5) Run `mysql -u admin -p` to log into the MySQL DB. It will prompt you for the password which is just `password`
6) You will now be inside the MySQL DB in the docker container.

# Things to Note
You can edit the docker-compose.yaml file to how you want. i.e. change the user login information or connect more containers.

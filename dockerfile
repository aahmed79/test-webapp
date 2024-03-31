# Pulling a Base Image (comments to undertstand)
FROM ubuntu
# Setting up workdir to copy all the code inside the container
WORKDIR /app
# To update Ubuntu OS
RUN apt-get update -y
# To install apache2 webserver
RUN apt-get install apache2 -y
#Copy the code from local to inside the docker image
COPY . /var/www/html
# To Start Apache Start Server
ENTRYPOINT apachectl -D FOREGROUND
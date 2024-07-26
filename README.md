# Website-as-Docker-Container

![image](https://github.com/user-attachments/assets/4c444f26-74be-40bb-a785-ed746b81fae0)

# Deploying my Website as a Docker Container

# Prerequisite
Ensure that you have Docker installed locally on your computer.

# Step 1: Write the Project's Dockerfile
The life of a Docker container image starts with a single file. The Docker file. Docker files are manifests that describe the image that your container will use and what will run within it. When we create the container that will run our website, Docker will do the following; First, it will read and parse this Docker file. Second, it will fetch the parent image that the Docker file requested. Third, it will run any commands within the Docker file on top of that image, such as the copy commands.
I created a Dockerfile in the root of my website directory using the touch Dockerfile command and added the following lines of code

```
FROM nginx
LABEL maintainer="Edith Cherotich <edithcherotich32@gmail.com>"
COPY ./website /website
COPY ./website.conf /etc/nginx/nginx.conf
```

The ``` FROM nginx ``` line tells Docker to create a Docker image based on the Nginx web server.



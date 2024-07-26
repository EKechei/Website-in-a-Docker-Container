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


The ``` FROM nginx ``` line tells Docker to create a Docker image based on the Nginx web server. The ```LABEL maintainer```  adds metadata to your Docker image, specifically the maintainer information. It indicates who is responsible for maintaining the image. ``` COPY ./website /website ``` This line copies the contents of the local **website** directory   into the **/website** directory inside the Docker image. This makes the files in the website directory available within the container. The ``` COPY ./website.conf /etc/nginx/nginx.conf ``` copies the **website.conf** file from your local machine to the **/etc/nginx/nginx.conf** path inside the Docker image.


# Step 2: Build the Docker Image
To build the image, run ``` docker build -t my-website .``` . The ``` docker build``` command tells docker to build the website as an image based on the instructions provided in a Dockerfile. The ```-t my-website ``` tells docker to tag the image my-website. The period (.) tells Docker to look for the Dockerfile in the current directory and use the files and directories in this location during the build process.

![image](https://github.com/user-attachments/assets/2b20b450-ce3d-4ed3-bc2c-2c100949d430)

# Step 3: Run the Docker Container 
This step starts the Docker container for the website using the previously built Docker image.
Use this command to run the container: ``` docker run --rm --name my-website-container -p 8080:80 my-website ```

# Step 4: Test
Open your web browser and go to **http://localhost:8080**

![image](https://github.com/user-attachments/assets/5e56f8cd-52bf-4eb1-895c-fbd40f97e0dd)

As you can see, my website is up and docker is working successfully.















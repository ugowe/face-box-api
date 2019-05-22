# This tells Docker to use the Node image from DockerHub
# This is referred to as the "parent image" of our image
FROM node:11

# WORKDIR - The current directory that you'd like to work out of
WORKDIR /usr/src/smart-brain-api
# WORKDIR /Users/ugowe/Development/smart-brain-api

# Puts whatever we want from our current directory into the container
COPY ./ ./

# Run says, "What should we do here?" or "What type of commands should run in the container"
RUN npm install

# CMD tells us what to run in our container
# "/bin/bash" part says to go into the bash shell
CMD ["/bin/bash"]

# The difference between run and CMD

# RUN is an image buildstep. The state of the container after a "run" command will be commited to the docker image
# So a Docker file can run many run steps that layer on top of one another to build the image that we want

# CMD runs by default when you run the build image
# So a Docker file can only have one command

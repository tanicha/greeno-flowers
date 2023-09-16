# the base image to start from
FROM node:18

# tells docker where to find source files and where to put them in image
COPY . /app

# specifies working directory
WORKDIR /app

# docker installs npm packages WHILE it runs the image
RUN npm install

# start command - runs after the image is built
CMD [ "npm", "start" ]

# publishes the port to see at local host link
EXPOSE 3000

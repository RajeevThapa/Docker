# Base Image from docker hub
FROM node:20-alpine

# Copies package.json (inside the machine) file to /app/ (inside the container)
COPY package.json /app/

# Copies src to /app/
COPY src /app/

# Sets the working directory of the following commands
WORKDIR /app

# Download dependencies inside the container and creates node modules folder before the application gets started
RUN npm install

# Instruction that is to be executed when a docker container starts (Run = Node, parameter = server.js)
CMD ["node", "server.js"]
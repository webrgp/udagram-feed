# Use NodeJS base image
FROM node:13

# Create app directory in Docker
WORKDIR /usr/src/app

# Copy app from local environment into the Docker image
COPY package*.json ./

# Install a project with a clean slate
RUN npm ci

# Bundle app source
COPY . .

# Set the API’s port number
EXPOSE 8080

# Define Docker’s behavior when the image is run
CMD [ "npm", "run", "prod" ]
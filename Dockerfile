# Specify the base image 
FROM node:14-alpine

WORKDIR '/app'

# Install the dependencies
COPY package.json .
RUN  npm install
COPY . .

# Start the server
CMD ["npm", "start"]
FROM node:latest
WORKDIR /usr/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]
# Use the official Node.js image as a base
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your application runs
EXPOSE 3000

# Command to run your application
CMD ["node", "server.js"]
  

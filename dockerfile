# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Add the configuration for EJS rendering engine
RUN mkdir views
RUN echo "app.set('view engine','ejs');" > views/ejs-config.js
RUN echo "app.engine('ejs', require('ejs').__express);" >> views/ejs-config.js

# Copy the rest of the application code
COPY . .

# Expose port 3000 (assuming your app listens on this port)
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]

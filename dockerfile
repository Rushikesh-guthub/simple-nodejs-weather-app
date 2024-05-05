FROM node:latest
WORKDIR /usr/app
COPY . .
RUN npm install ejs
RUN npm install    # Assuming you have other dependencies to install
EXPOSE 3000
CMD ["node","server.js"]

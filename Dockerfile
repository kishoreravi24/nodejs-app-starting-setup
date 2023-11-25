#Base image : node
FROM node

# Workdir /app
WORKDIR /app

# Copy local path to workdir
COPY . /app

# Run in image
RUN npm install

# mention/expose the app running on 80
EXPOSE 80

# exec in container
CMD ["node","server.js"]
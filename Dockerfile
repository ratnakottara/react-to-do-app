# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code from the src folder
COPY src ./src

# Expose port 3000 (assuming your application listens on port 3000)
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "src/index.js" ]

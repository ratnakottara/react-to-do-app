# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

COPY package.json .

# Install project dependencies
RUN npm install

# Copy all files from the current directory to the container's working directory
COPY . .

# Build your React app (replace "build" with the actual build script if different)
RUN npm run build

# Set environment variables (optional, if needed)
# ENV REACT_APP_API_URL=https://api.example.com

# Expose the port on which your React app will run (usually 3000 by default)
EXPOSE 3000

# Start your React app
CMD ["npm", "start"]

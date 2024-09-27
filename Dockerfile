# Example Node.js Dockerfile
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Expose port and start the application
EXPOSE 3000
CMD ["npm", "start"]

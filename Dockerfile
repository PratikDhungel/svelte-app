# Use the official Node.js 20 image from the Docker Hub
FROM node:20

# Create and change to the app directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port on which the app will run
EXPOSE 5173

# Start the application in development mode
CMD ["npm", "run", "dev"]
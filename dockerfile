# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Install NestJS CLI globally
RUN npm install @nestjs/cli

# Create a new NestJS application named "nest-app"
RUN npx @nestjs/cli new nest-app --strict
# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code into the image
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start:prod"]

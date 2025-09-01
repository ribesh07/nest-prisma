# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /src

# Copy package files first (for caching)
COPY package*.json ./

# Ensure clean install
RUN rm -rf node_modules && npm install --legacy-peer-deps

# Copy the rest of the project
COPY . .

# Expose port if needed
EXPOSE 3000


# Start command
CMD ["npm", "run", "start:prod"]

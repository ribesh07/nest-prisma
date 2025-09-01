# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /src

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Build NestJS app
RUN npm run build

# Expose app port
EXPOSE 3000

# Start command
CMD ["npm", "run", "start:prod"]

# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your source code
COPY . .

# Expose Vite's default port
EXPOSE 5173

# Start the app in development mode
CMD ["npm", "run", "dev", "--", "--host"]
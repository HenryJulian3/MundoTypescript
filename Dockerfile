# Use a Node.js image
FROM node:18

# Create and use a working directory
WORKDIR /app

# Copy the project files and install them
COPY package*.json ./
RUN npm install

# Copy the rest of the project files
COPY . .

# Compile the TypeScript
RUN npx tsc

# Expose the port
EXPOSE 3000

# Run the server
CMD ["npx", "lite-server", "--baseDir=dist"]

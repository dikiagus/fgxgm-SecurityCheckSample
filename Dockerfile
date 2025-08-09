FROM node:18.20.8-alpine3.21

# Set working directory
WORKDIR /app

# Install dependencies first (better caching)
COPY package*.json ./
RUN npm install -g npm@9.1.3 && npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 8080

# Run app
CMD ["node", "index.js"]

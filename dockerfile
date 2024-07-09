# Gunakan Node.js LTS sebagai base image
FROM node:16-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dan package-lock.json terlebih dahulu
COPY package.json .
COPY package-lock.json .

# Install dependencies, termasuk TypeScript
RUN npm install

# Install TypeScript secara global
RUN npm install -g typescript

# Bundle app source
COPY . .

# Expose port 8000
EXPOSE 8000

# Menjalankan aplikasi
CMD ["npm", "start"]

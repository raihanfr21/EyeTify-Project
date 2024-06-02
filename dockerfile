# Menggunakan image node sebagai base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port yang digunakan aplikasi
EXPOSE 8080

# Command untuk menjalankan aplikasi
CMD ["node", "src/app.js"]
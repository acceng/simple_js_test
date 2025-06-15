# Pakai Node.js image official versi ringan
FROM node:18-alpine

# Set working directory dalam container
WORKDIR /app

# Copy package.json & package-lock.json (kalau ada)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file ke container
COPY . .

# Jalankan perintah test secara default saat container dijalankan
CMD ["npm", "test"]

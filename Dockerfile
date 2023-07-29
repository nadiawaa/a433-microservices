# Menggunakan base image dari Node.js versi 14
FROM node:14

# Mengatur direktori kerja di dalam container ke /app
WORKDIR /app

# Menyalin package.json dan package-lock.json ke direktori /app/
COPY package.json package-lock.json /app/

# Menyalin file index.js ke direktori /app/
COPY index.js /app/

# Menjalankan perintah npm install untuk menginstal dependencies dari package.json
RUN npm install

# Mengekspos port 3001 untuk koneksi dari luar container
EXPOSE 3001

# Perintah yang akan dijalankan saat container berjalan, yaitu menjalankan aplikasi Node.js
CMD ["node", "index.js"]

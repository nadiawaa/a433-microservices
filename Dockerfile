# Menggunakan image node versi 14 berbasis Alpine Linux sebagai base image
FROM node:14-alpine

# Mengatur direktori kerja saat ini menjadi /app
WORKDIR /app

# Menyalin semua file dan direktori dari direktori saat ini ke direktori /app di dalam container
COPY . .

# Menetapkan variabel lingkungan NODE_ENV dengan nilai "production" dan DB_HOST dengan nilai "item-db"
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah npm install untuk menginstal dependensi aplikasi
# --production digunakan untuk menginstal hanya dependensi yang diperlukan untuk produksi
# --unsafe-perm digunakan untuk memberikan izin yang tidak aman saat menginstal paket
# && digunakan untuk menjalankan perintah npm run build setelah npm install selesai
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

# Menjalankan perintah npm start saat container dijalankan
CMD ["npm", "start"]
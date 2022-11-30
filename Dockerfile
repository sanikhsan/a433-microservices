# Mengambil Base Image NodeJS versi 14 dari DockerHub.
FROM node:14-alpine

# Membuat Directory baru sebagai working directory untuk menjalankan intruksi yang kita tulis dan akan dieksekusi di folder ini.
WORKDIR /app

# Menyalin semua berkas yang ada di local working directory ke container working directory (/app)
COPY . .

# Menjalankan aplikasi dalam Production Mode dan menggunakan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall Dependencies untuk Production dan kemudian melakukan build
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 yang digunakan untuk aplikasi
EXPOSE 8080

# Mengeksekusi perintah untuk menjalankan aplikasi (npm start jika pada terminal)
CMD ["npm", "start"]
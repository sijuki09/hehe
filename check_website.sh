#!/bin/bash

# Memeriksa apakah argumen URL diberikan
if [ -z "$1" ]; then
    echo "Harap masukkan URL sebagai argumen. Contoh: ./check_web.sh https://example.com"
    exit 1
fi

# URL website yang akan diperiksa (diambil dari argumen pertama)
url=$1

# Menggunakan curl untuk memeriksa status HTTP, hanya meminta header (-I)
status=$(curl -I -s --max-time 10 $url | grep HTTP | awk '{print $2}')

# Memeriksa apakah status tidak kosong
if [ -z "$status" ]; then
    echo "Website tidak dapat diakses."
elif [ $status -eq 200 ]; then
    echo "Website dapat diakses."
else
    echo "Website tidak dapat diakses. Status HTTP: $status"
fi

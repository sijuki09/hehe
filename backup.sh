#!/bin/bash

# Membuat folder backup jika belum ada
if [ ! -d "/home/user/Document/backup" ]; then
    mkdir -p /home/user/Document/backup
fi

# Mendapatkan tanggal hari ini
tanggal=$(date +%Y-%m-%d)

# Melakukan backup dengan format nama backup_tanggal.zip
zip -r /home/user/Document/backup/backup_$tanggal.zip /home/user/Document

# Menampilkan pesan setelah backup selesai
echo "Backup selesai. File disimpan di /home/user/Document/backup/backup_$tanggal.zip"

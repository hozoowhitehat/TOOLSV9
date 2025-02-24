#!/bin/bash

read -p "Masukkan nomor WhatsApp (dengan kode negara, contoh: +62xxxxxxx): " nomor

pesan="Hello, I would like to request an unban because I feel I have met the requirement to be released from restrictions. I promise to follow the rules and not commit any more violations. Number: $nomor Thank you."

for ((i=1; i<=99999; i++))
do
    echo -e "Subject: WhatsApp Unban Request\n\n$pesan" | sendmail support@whatsapp.com
    echo "[$i] Permintaan unban telah dikirim untuk nomor $nomor."
done

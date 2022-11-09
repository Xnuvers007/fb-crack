# Membuat script automation update upgrade

echo "Apakah anda menggunakan Linux atau Termux ? (L/T) = "
read pilih
if [ $pilih = "L" ] || [ $pilih = "l" ]; then
    echo -e "\e[1;31mAnda menggunakan Linux\e[0m"
    echo -e "\e[1;32mMengupdate sistem\e[0m"
    sudo apt-get update -y
    echo -e "\e[1;32mMengupgrade sistem\e[0m"
    sudo apt-get upgrade -y
    echo -e "\e[1;32mMenginstall python2\e[0m"
    sudo apt-get install python2 -y
    echo -e "\e[1;32mMenginstall PIP requests dan mechanize\e[0m"
    sudo apt-get install python-pip -y
    sudo pip install requests mechanize
    cd ./mechanize1/
    python setup.py install
    cd ..
    python2 ./main.py
    clear
    echo "========================================"
    echo "Selesai"
    echo "========================================"
elif [ $pilih = "T" ] || [ $pilih = "t" ]; then
    #memberikan warna pada teks
    echo -e "\e[1;31mAnda menggunakan Termux\e[0m"
    echo -e "\e[1;32mMengupdate sistem\e[0m"
    apt update -y
    echo -e "\e[1;32mMengupgrade sistem\e[0m"
    apt upgrade -y
    echo -e "\e[1;32mMengupdate package\e[0m"
    pkg update -y
    echo -e "\e[1;32mMengupgrade package\e[0m"
    pkg upgrade -y
    echo -e "\e[1;32mMenginstall python2\e[0m"
    pkg install python2 -y
    echo -e "\e[1;32mMenginstall PIP requests dan mechanize\e[0m"
    pip2 install requests mechanize
    cd ./mechanize1/
    python setup.py install
    cd ..
    python2 ./main.py
    clear
    echo "========================================"
    echo "Selesai"
    echo "========================================"
else
    echo "Pilihan anda tidak ada"
    echo "Akan keluar dalam 5 detik"
    sleep 5
    exit
fi
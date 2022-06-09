# 1. Menginstal Atom

    # Pertama, gunakan dpkg untuk menginstal editor teks yang bernama Atom. File .deb terletak di "/home/qwiklab/downloads/atom-amd64.deb", yang dapat Anda instal menggunakan perintah
    sudo dpkg -i /home/qwiklab/downloads/atom-amd64.deb

    # Anda dapat mengatasi masalah ini dengan menggunakan apt untuk mengatasi dependensi yang hilang, menggunakan perintah
    sudo apt install -f

    # Anda akan diminta untuk mengonfirmasi keputusan Anda guna melanjutkan operasi ini dengan mengetik "Y" (untuk "Yes") saat proses sedang berlangsung
    # Atom sudah berhasil diinstal. Anda dapat memverifikasinya menggunakan dpkg :
    dpkg -s atom

# 2. Mengekstrak arsip

    # Selanjutnya, Anda akan mengekstrak arsip .tar. Arsip "extract_me.tar" terletak di "/home/qwiklab/downloads/". Pindah ke direktori tersebut menggunakan perintah berikut
    cd /home/qwiklab/downloads

    # Anda dapat menggunakan perintah tar Linux untuk mengekstraknya menggunakan perintah berikut:
    sudo tar -xvf extract_me.tar

# 3. Mengarsipkan file

    # Pertama, kembalilah ke direktori awal:
    cd ~

    # Anda juga dapat menggunakan perintah tar untuk melakukan operasi balik guna membuat arsip. Ada tiga file di folder /home/qwiklab/documents yang bernama "Earth", "Mercury", dan "Venus". Gunakan tar untuk mengarsip folder tersebut ke file "Planets.tar" menggunakan perintah berikut (satu baris):
    tar -cvf Planets.tar --absolute-names /home/qwiklab/documents/Earth /home/qwiklab/documents/Mercury /home/qwiklab/documents/Venus

# 4. Menginstal 7-Zip

    # Anda juga dapat menginstal program di Linux, menggunakan apt, yang menangani dependensi untuk Anda guna menyederhanakan proses instal. Anda dapat menginstal program 7-Zip, menggunakan apt, dengan sebaris perintah sederhana:
    sudo apt install p7zip-full

    # Anda akan diminta untuk mengonfirmasi keputusan Anda saat proses instal sedang berlangsung. Konfirmasi keputusan Anda dengan mengetik "Y" (untuk "Yes"). Lalu, 7-Zip akan diinstal:
    # Anda dapat memverifikasi proses instal menggunakan dpkg dengan perintah berikut:
    dpkg -s p7zip-full

# 5. Meng-uninstal GIMP

    # Proses uninstal juga dapat ditangani oleh apt dengan menggunakan "remove", bukan "install", sebagai argumen. GIMP, program pengeditan gambar, sudah diinstal di mesin Anda. Uninstal program tersebut sekarang, menggunakan apt dengan perintah berikut:
    sudo apt remove gimp

    # Anda dapat memverifikasinya menggunakan dpkg (seperti langkah sebelumnya) dengan perintah berikut:
    dpkg -s gimp

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22079467?locale=id&parent=lti_session
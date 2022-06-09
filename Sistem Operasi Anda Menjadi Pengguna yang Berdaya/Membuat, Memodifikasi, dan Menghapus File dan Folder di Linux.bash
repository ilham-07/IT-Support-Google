# Perintah Navigasi sistem File di Linux

    # Memeriksa konten direktori saat ini
    ls

    # Melihat detail file selengkapnya, seperti kepemilikan dan izin
    ls -l

    # Melihat file tersembunyi dalam direktori saat ini
    ls -a

    # Mencari tahu lokasi, dalam sistem file
    pwd

    # Membuka direktori lain
    cd /path/to/other/directory

    # Melihat konten sebuah file
    cat /path/to/file/file_name

    # Membaca file besar
    less /path/to/file/file_name

    # Direktori (folder) di Linux dibuat menggunakan perintah "mkdir"
    mkdir dir_name

# 1. Membuat direktori (folder)

    # Di mesin virtual Linux ini, direktori /home/user/Desktop berisi file bernama "colors". Kita akan membuka file ini, dan untuk setiap baris yang tercantum di dalamnya, kita akan membuat folder baru dengan nama tersebut di direktori /home/user/Documents

    # Langkah 1: Ubah ke direktori yang berfungsi
    cd /home/user/Documents

    # Langkah 2: Tampilkan konten file "colors" di direktori "Desktop"
    cat /home/user/Desktop/colors

    # Langkah 3: Buat direktorinya
    mkdir red blue green yellow magenta

    # Untuk menghapus direktori kosong, gunakan perintah rmdir
    rmdir dir_name

# Menyalin, memindah, serta menghapus file dan direktori (folder)

    # Perintah "cp" digunakan untuk membuat satu atau beberapa salinan direktori atau file
    # Contoh 1
    # Salin file "source_file" di direktori /home/user/ ke direktori "duplicates" sebagai "target_file"
    cp /home/user/source_file /home/user/duplicates/target_file

    # Perintah pindahkan "mv" digunakan untuk memindahkan satu atau beberapa file atau direktori ke lokasi yang berbeda atau mengganti namanya dengan yang baru
    # Contoh 2
    # Pindahkan file "source_file" di /home/user/ ke direktori "moved_files", lalu beri nama "target_name"
    mv /home/user/source_file /home/user/moved_files/target_file

    # Perintah "rm" digunakan untuk menghapus satu atau beberapa file
    # Contoh 3
    # Menghapus file duplikat yang kita buat di direktori "duplicates" menggunakan "rm"
    rm /home/user/duplicates/target_file

# 2. Mengambil semua file yang tersembunyi lalu memindahkannya
    
    # Di direktori /home/user/Pictures, kita akan mengambil semua file yang tersembunyi lalu memindahkannya ke direktori /home/user/Documents/Hidden

    # Langkah 1: Pindah ke direktori Pictures
    cd /home/user/Pictures

    # Langkah 2: Tampilkan konten direktori, termasuk file tersembunyi
    ls -a

    # Langkah 3: Pindahkan file tersembunyi ke direktori target
    mv .apple .banana .broccoli .milk /home/user/Documents/Hidden

# 3. Memindahkan files dan folders
    
    # Di direktori /home/user/Movies, terdapat folder bernama "Europe Pictures". Kita akan memindahkan folder ini ke direktori gambar yang benar: /home/user/Pictures.
    mv /home/user/Movies/Europe\ Pictures /home/user/Pictures

    # Di direktori /home/user/Images, kita dapat memindahkan file "Vacation.JPG" ke direktori Pictures. Untuk melakukannya, kita akan beralih ke direktori Pictures, lalu menambahkan "dot" ke perintah mv sebagai targetnya.
    cd /home/user/Pictures

    mv /home/user/Images/Vacation.JPG .

# 4. Menghapus files dan folders di Linux

    # Beberapa file di direktori /home/user/Music perlu dihapus. Kita akan melihat contoh menghapus file dan direktori dengan menghapus tanda -:
    # Best_of_the_90s
    # 80s_jams
    # Classical
    # Rock (folder)

    # Langkah 1: Buka folder Music
    cd /home/user/Music

    # Langkah 2: Hapus filenya
    rm Best_of_the_90s 80s_jams Classical

    # Langkah 3: Hapus direktorinya
    rmdir Rock

# 5. Menelusuri file

    # Terdapat sejumlah file dalam direktori /home/user/Downloads di mesin virtual Anda. Kita akan mencari file yang berisi kata "vacation", lalu memindahkannya ke /home/user/Documents
    
    # Langkah 1: Temukan filenya
    grep -rw /home/user/Downloads -e "vacation"

    # Langkah 2: Pindahkan direktori yang cocok ke direktori target
    mv /home/user/Downloads/Iceland /home/user/Downloads/Japan /home/user/Documents

# 6. Mengedit files

    # Menggunakan perintah "nano" untuk membuka editor Nano dan mengubah file yang sudah ada atau membuat file baru
    nano /path/to/existing/file

    # Untuk menyimpan perubahan pada file "CTRL + O"
    CTRL-O

    # Menutup program menggunakan "CTRL + X"
    CTRL-X

    # Mengakses bantuan menggunakan "Ctrl + G"
    CTRL-G

    # Untuk keluar dari mode bantuan, gunakan "CTRL + X"
    CTRL-X

    # Berlatih mengedit file menggunakan "nano"
    # Di direktori saat ini, buat file bernama editor_test.txt
    touch editor_test.txt

    # Buka file dengan editor Nano
    nano editor_test.txt

    # Tambahkan konten ke file
    # Simpan file dengan menekan "CTRL + O"
    CTRL-O

    # Mengonfirmasi file, tempat Anda ingin menuliskan konten dengan menekan Enter
    # Setelah itu, keluar dari program dengan menekan "CTRL + X"
    CTRL-X

# Referensi : https://googlecoursera.qwiklabs.com/focuses/22078875?locale=id&parent=lti_session
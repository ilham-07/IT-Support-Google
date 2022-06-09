# 1. Menghentikan proses tertentu

    # Menjalankan ps dan grep untuk menemukan keduanya menggunakan perintah ini
    ps -aux | grep "totally_not_malicious"

    # Untuk menghentikan proses, Anda dapat menggunakan perintah kill. Anda harus menggunakan sudo agar dapat memiliki izin untuk menghentikannya. Anda juga harus mencantumkan ID proses, yang mungkin akan berbeda antara yang ada di mesin Anda
    sudo kill [PROCESS ID]

    # Memverifikasi bahwa proses tersebut sudah tidak lagi berjalan dengan menjalankan lagi perintah asli
    ps -aux | grep "totally_not_malicious"

# 2. Menghentikan beberapa proses

    # Terdapat juga beberapa proses yang berjalan di komputer Anda, yang berisi kata "razzle". Anda dapat menemukan proses tersebut dengan cara yang sama seperti saat Anda menemukan proses sebelumnya menggunakan ps. Karena tidak mencari kecocokan persis, grep dapat digunakan untuk menemukan proses apa pun yang berisi substring tertentu
    ps -aux | grep "razzle"

    # Untuk menghentikan setiap proses tersebut, Anda dapat menggunakan perintah kill yang sama seperti sebelumnya, dengan mengganti setiap ID prosesnya
    sudo kill [PROCESS ID]

    # Untuk memverifikasi bahwa proses berhasil dihentikan
    ps -aux | grep "razzle"

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22081579?locale=id&parent=lti_session
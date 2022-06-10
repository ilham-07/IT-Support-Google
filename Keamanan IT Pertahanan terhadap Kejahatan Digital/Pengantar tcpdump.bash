# 1. Menggunakan tcpdump
    # 1.1 Penggunaan Dasar
        # Perintah dimulai dengan
        sudo
        # Menetapkan antarmuka yang ingin digunakan untuk pemrosesan
        -i
        # Memeriksa nama antarmuka jaringan utama
        ip link
        # Nama antarmuka
        eth0
        # Memulai proses semua paket di antarmuka
        sudo tcpdump -i eth0
        # Untuk menghasilkan output yang lebih panjang
        -v
        # Menonaktifkan perilaku ini menggunakan tanda
        -n
        # Untuk mendapatkan analisis yang lebih mendetail, gunakan
        sudo tcpdump -i eth0 -vn

    # 1.2 Pemfilteran
        # Dengan perintah
        sudo tcpdump -i eth0 -vn host 8.8.8.8 and port 53 &

        # Melihat semua daftar pekerjaan yang berjalan
        jobs -l

        # Lanjut dengan perintah
        dig @8.8.8.8 A example.com
        # menggunakan utilitas dig untuk mengirimkan kueri ke server DNS tertentu
        # meminta A record untuk domain yang ditentukan

        # Untuk menampilkan proses ke latar depan dengan perintah
        fg % [job-id]

# 2. Menyimpan Paket yang Ditangkap
    # Jalankan perintah
    sudo tcpdump -i eth0 port 80 -w http.pcap &
    # memulai penangkapan di antarmuka eth0 yang memfilter traffic HTTP saja dengan menentukan port 80
    # tanda -w menunjukkan bahwa kita ingin menulis paket yang ditangkap ke file bernama http.pcap

    # Melihat daftar semua pekerjaan yang berjalan
    jobs -l

    # Membuat beberapa traffic
    curl example.com

    # Menampilkan proses ke latar depan
    fg % [job-id]

    # Membaca file menggunakan tcpdum
    tcpdump -r http.pcap -nv

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22100378?locale=id&parent=lti_session
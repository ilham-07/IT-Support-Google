# Pengingat perintah Linux
    # Menjalankan perintah dengan hak administrator
    sudo <command>

    # Mencantumkan file di direktori
    ls <directory>

    # Memindahkan atau mengganti nama file dari nama lama ke nama baru
    mv <old_name> <new_name>

    # Menampilkan baris terakhir file
    tail <file>

    # Mencetak seluruh isi file
    cat <file>

    # Memfilter teks file berdasarkan pola
    grep <pattern> <file>

    # Memungkinkan Anda mencari file
    less <file>

    # Menggabungkan perintah dengan tanda "|"
    sudo cat /var/log/syslog | grep error | tail

# Mencantumkan layanan sistem
    sudo service --status-all

# 1. Menghentikan dan memulai layanan
    # Memeriksa status layanan dengan perintah "service" serta "status"
    sudo service rsyslog status

    # Melihat cara kerja layanan dengan perintah "logger"
    logger This is a test log entry

    # Memastikan mengirim teks ke layanan "rsyslog" lalu layanan akan menuliskan ke "syslog" di baris terakhir
    sudo tail -1 /var/log/syslog

    # Menghentikan layanan "rsyslog"
    sudo service rsyslog stop

    # Melihat status saat ini dan mengkueri status layanan kembali
    sudo service rsyslog status

    # Mengirim teks kembali dengan perintah "logger"
    logger This is another test log entry

    # Memeriksa isi /var/log/syslog
    sudo tail /var/log/syslog

    # Memulai ulang layanan "rsyslog"
    sudo service rsyslog start

    # Lalu
    sudo service rsyslog status

    # Mencoba perintah "logger" kembali
    logger This is another test log entry

    # Memeriksa isi /var/log/syslog
    sudo tail /var/log/syslog

# 2. Mengatasi layanan yang gagal
    # Mencantumkan status layanan yang dikontrol oleh System V
    sudo service --status-all

    # Memperoleh informasi selengkapnya tentang layanan
    sudo service cups status

    # Melihat status isi direktori layanan "cups"
    sudo ls -l /etc/cups

    # Memindahkan file agar layanan "cups" dapat menemukannya dan berhasil memulai
    sudo mv /etc/cups/cupsd.conf.old /etc/cups/cupsd.conf

    # Menggunakan "ls" untuk melihat apakah file sudah diganti dengan nama yang tepat
    sudo ls -l /etc/cups

    # Memulai layanan "cups"
    sudo service cups start

    # Memeriksa layanan "cups"
    sudo service cups status

# 3. Memulai ulang layanan
    # Melihat isi direktori /var/log/cups
    sudo ls -l /var/log/cups

    # Mengedit /etc/cups/cupsd.conf menggunakan editor "nano"
    sudo nano /etc/cups/cupsd.conf

    # Memulai ulang layanan "cups" dan layanan akan mendeteksi perubahan file konfigurasinya
    sudo service cups restart

    # Akan ada banyak isi di /var/log/cups/error_log
    sudo cat /var/log/cups/error_log

# 4. Memuat ulang layanan
    # Mengedit /etc/cups/cupsd.conf menggunakan editor "nano"
    sudo nano /etc/cups/cupsd.conf

    # Memuat ulang layanan "cups"
    sudo service cups reload

    # Memeriksa status layanan
    sudo service cups status

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22097890?locale=id&parent=lti_session
# Pengingat perintah Linux
    # menjalankan perintah dengan hak administrator
    sudo <command>

    # memperbarui daftar paket yang tersedia untuk diinstal
    apt update

    # menginstal paket yang ada di sistem
    apt install package

    # menampilkan daftar file di direktori
    ls <directory>

    # membuat salinan file lama dengan nama baru
    cp <old> <new>

    # memindahkan atau mengganti nama file lama dengan nama baru
    mv <old> <new>

    # membuka editor teks untuk mengedit file
    nano <file>

    # menghasilkan output keseluruhan isi file
    cat <file>

# 1. Skenario
    # Melihat isi direktori /opt/devel/ourcompany
    ls -l /opt/devel/ourcompany

# 2. Menginstal Apache2
    # Memperbaharui daftar paket dan menginstal paket
    sudo apt update
    sudo apt install apache2

    # Melihat status layanan Web Apache2
    sudo service apache2 status

    # Memulai layanan Web Apache2
    sudo service apache2 start

# 3. Mengkonfigurasi situs
    # Melihat isi direktori yang tersedia di daftar situs /etc/apache2/sites-available
    ls -l /etc/apache2/sites-available

    # Melihat isi file 000-default.conf
    cat /etc/apache2/sites-available/000-default.conf

    # 3.1 Memindahkan situs ke lokasi yang tepat
        # Memindahkan situs dari lokasinya saat ini /var/www/ourcompany
        sudo mv /opt/devel/ourcompany /var/www/ourcompany

        # Melihat isi /var/www
        ls -l /var/www

    # 3.2 Membuat situs baru yang tersedia
        # Membuat salinan situs default lalu edit file yang baru
        cd /etc/apache2/sites-available
        sudo cp 000-default.conf 001-ourcompany.conf
        sudo nano 001-ourcompany.conf

    # 3.3 Mengaktifkan dan menonaktfikan situs
        # Melihat isi direktori /etc/apache2/sites-enabled
        ls -l /etc/apache2/sites-enabled

        # Mengaktifkan situs baru a2ensite dan menonaktifkan situs a2dissite default
        sudo a2ensite 001-ourcompany.conf
        sudo a2dissite 000-default.conf

        # Melihat isi direktori
        ls -l /etc/apache2/sites-enabled

        # Mengkonfigurasi layanan Apache2 telah diubah dan meminta layanan agar dimuat ulang
        sudo service apache2 reload

# 4. Konfigurasi tambahan
    # Melihat isi halaman index.html
    cat /var/www/ourcompany/index.html

    # 4.1 Mengaktifkan modul
        # Melihat daftar modul yang tersedia
        cat /var/www/ourcompany/index.html

        # Mengelola modul a2enmod untuk diaktifkan lalu aktifkan include
        sudo a2enmod include

        # Memulai ulang server
        sudo service apache2 restart

    # 4.2 Opsi konfigurasi
        # Membuka kembali file dan menambahkan file yang diperlukan
        sudo nano /etc/apache2/sites-available/001-ourcompany.conf

        # Yang harus ditambahkan setelah DocumentRoot
        <Directory /var/www/ourcompany>
            Options +Includes
            XBitHack on
        </Directory>

        # Memuat ulang konfigurasi Apache2 agar perubahan terakhir dapat terbaca
        sudo service apache2 reload

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22098254?locale=id&parent=lti_session
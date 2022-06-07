# 1. Memverifikasi software yang terinstal dengan Linux

    # Contoh (1) ingin memverifikasi aplikasi "Mozila Firefox"
    dpkg -s firefox-esr
    # Apabila Mozila Firefox tidak terinstal di sistem, maka periksa "GIMP"
    dpkg -s gimp

    # Contoh (2) ingin memverifikasi aplikasi "VLC"
    dpkg -s vlc

# 2. Mengupdate software dengan Linux

    # Contoh ingin mengupdate aplikasi "VLC" yang lama
    sudo apt-get install -f

    # Lalu verifikasi penginstalan
    dpkg -s vlc

# 3. Menginstal software dengan Linux, contoh disini "Mozila Firefox"

    # Untuk memastikan repositori adalah yang terbaru dan semua dependsi diperbaiki
    sudo apt-get update

    # Lalu menginstal Mozila Firefox
    sudo apt-get install firefox-esr

    # Memverifikasi Mozila Firefox telah terinstal
    dpkg -s firefox-esr

# 4. Meng-uninstal software dengan Linux, contoh disini "GIMP"

    # Meng-uninstal GIMP
    sudo apt-get remove gimp

    # Memverifikasi bahwa "GIMP" telah di uninstal
    dpkg -s gimp
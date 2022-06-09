# 1. Blok dan partisi

    # 1.1 Blok
        # Di Linux, Anda dapat melihat perangkat blok dan sistem file yang terpasang ke sistem Anda menggunakan perintah
        lsblk

        # Anda dapat melihat disk yang terpasang di sistem menggunakan perintah "df". Gunakan opsi "-h" untuk menampilkan ukuran file dalam format yang dapat dibaca manusia.
        df -h

    # 1.2 Partisi
        # Anda dapat menampilkan informasi partisi menggunakan perintah "fdisk". Untuk mencantumkan semua partisi, gunakan "fdisk -l".
        sudo fdisk -l

        # Untuk mencantumkan partisi yang ada dalam "/dev/sdb", teruskan /dev/sdb ke perintah "fdisk".
        sudo fdisk -l /dev/sdb

# 2. Memasang dan melepas

    # Lanjutkan dan mulai fdisk dalam mode interaktif dengan meneruskan nama disk yang ingin Anda buat partisinya. Di lab ini, kita akan membuat partisi /dev/sda. Mulai fdisk dengan meneruskan disk yang ingin Anda buat partisi sebagai parameter.
    sudo fdisk /dev/[SECOND DRIVE]

    # fdisk akan dimulai dalam mode interaktif. Anda dapat menggunakan m untuk menggunakan bantuan yang diberikan oleh perintah.

    # Anda dapat menggunakan p untuk menampilkan detail partisi pada disk.

    # Masukkan q untuk keluar dari mode interaktif setelah Anda selesai bereksplorasi.

# 3. Membuat Partisi

    # Buka fdisk dalam mode interaktif untuk melakukan partisi:
    sudo fdisk /dev/[SECOND DRIVE]

    # Untuk membuat partisi baru, kontrol perintah "n" akan digunakan.
    # Gunakan kontrol perintah "d" untuk menghapus partisi default
    # Mengedit tabel partisi dalam memori Anda dapat menggunakan perintah "q" di sini untuk keluar dari fdisk tanpa menyimpan perubahan ke disk.
    # Menggunakan perintah "v" di sini untuk memverifikasi perubahan Anda sebelum melanjutkan.
    # Menyimpannya ke disk dengan menggunakan perintah "w".

# 4. Memformat partisi menggunakan mkfs

    # Gunakan "lsblk" lagi untuk menemukan disk tempat Anda ingin membuat jenis sistem file.
    lsblk

    # Format partisi kedua dalam Drive Anda yang tidak terpasang (sdb2 atau sda2) menjadi ext4 menggunakan perintah
    sudo mkfs -t ext4 /dev/[SECOND DRIVE]2

    # Sekarang Anda dapat memasang /dev/sda2 ke lokasi di sistem file untuk mulai mengakses file. Pasang di direktori /home/my_drive.
    sudo mount /dev/[SECOND DRIVE]2 /home/my_drive

    # Memverifikasi sistem file dan perangkat blok yang terpasang ke sistem Anda menggunakan perintah lsblk.
    lsblk

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22079693?locale=id&parent=lti_session
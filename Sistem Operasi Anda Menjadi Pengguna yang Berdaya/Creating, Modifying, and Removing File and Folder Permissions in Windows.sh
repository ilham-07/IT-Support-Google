# Contoh 1

    # Menggunakan ICACLS untuk melihat izin yang sudah ada pada file menggunakan perintah berikut
    ICACLS C:\Users\Qwiklab\Documents\important_document

    # Menghapus Kara seluruhnya dari izin file, lalu periksa apakah tindakan tersebut berhasil menggunakan
    ICACLS C:\Users\Qwiklab\Documents\important_document /remove "Kara"

    ICACLS C:\Users\Qwiklab\Documents\important_document

    # Untuk hanya memberinya izin baca, gunakan perintah
    ICACLS C:\Users\Qwiklab\Documents\important_document /grant "Kara:(r)"

    # Memeriksa kembali izin baca menggunakan perintah
    ICACLS C:\Users\Qwiklab\Documents\important_document

# Contoh 2

    # Melihat izin saat ini dengan perintah berikut, dan perhatikan bahwa Kara memiliki izin baca sementara Phoebe tidak tercantum
    ICACLS C:\Users\Qwiklab\Secret\

    # Memberi Phoebe akses baca, menggunakan perintah
    ICACLS C:\Users\Qwiklab\Secret\ /grant "Phoebe:(r)"

    ICACLS C:\Users\Qwiklab\Secret\

    # Memberikan izin tulis kepada Kara
    ICACLS C:\Users\Qwiklab\Secret\ /grant "Kara:(w)"

    # Melihat izin untuk memverifikasinya
    ICACLS C:\Users\Qwiklab\Secret\

# Contoh 3

    # Mengubah izin folder ini sehingga grup "Everyone" hanya memiliki izin baca (bukan tulis)
    ICACLS C:\Users\Qwiklab\Music\

    # Menghapus izin grup saat ini, lalu kembali memberinya izin baca, menggunakan perintah
    ICACLS C:\Users\Qwiklab\Music\ /remove "Everyone"

    ICACLS C:\Users\Qwiklab\Music\ /grant "Everyone:(r)"

    # Sekarang grup "Everyone" hanya memiliki izin baca dan dapat memeriksanya menggunakan perintah yang sama seperti sebelumnya
    ICACLS C:\Users\Qwiklab\Music\

# Contoh 4

    # Mengubah izin file tersebut agar grup bernama "Authenticated Users" memiliki akses "Write"
    ICACLS C:\Users\Qwiklab\Documents\not_so_important_document

    # Saat ini grup "Authenticated Users" tidak tercantum. Berarti satu-satunya langkah yang diperlukan adalah memberinya akses tulis
    ICACLS C:\Users\Qwiklab\Documents\not_so_important_document /grant "Authenticated Users:(w)"

    # Menggunakan perintah yang sama seperti sebelumnya untuk memverifikasi bahwa perintah berhasil
    ICACLS C:\Users\Qwiklab\Documents\not_so_important_document

# Contoh 5

    # Mengubah izin file lain dalam folder "Documents". File bernama "public_document" perlu disetel agar dapat dibaca oleh publik, sehingga semua orang dalam sistem dapat membacanya
    ICACLS C:\Users\Qwiklab\Documents\public_document

    # Memastikan bahwa semua pengguna dalam sistem memiliki izin baca adalah dengan menambahkan izin tersebut ke grup "Everyone"
    ICACLS C:\Users\Qwiklab\Documents\public_document /grant "Everyone:(r)"

    # Melihat izinnya lagi untuk memastikan perintah berhasil
    ICACLS C:\Users\Qwiklab\Documents\public_document

# Referensi : https://googlecoursera.qwiklabs.com/focuses/22078557?locale=id&parent=lti_session
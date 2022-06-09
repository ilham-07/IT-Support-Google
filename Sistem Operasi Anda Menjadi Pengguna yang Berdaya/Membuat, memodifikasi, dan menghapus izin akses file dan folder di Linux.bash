# Membuat, mengubah, dan menghapus izin file dan folder di Linux

# 1. Memeriksa izin

    # Terdapat file bernama "important_document" di mesin Anda dengan direktori "/home/qwiklab/documents". Mengubah ke direktori tersebut dari direktori saat ini menggunakan
    cd ../qwiklab/documents

    # Periksa izinnya saat ini dengan perintah
    ls -l important_document

# 2. Mengubah izin file

    # Mengubah izin "important_document" menggunakan perintah "chmod" dengan argumen "700". Karena file tersebut adalah milik "root", dan harus menggunakan "sudo"
    sudo chmod 700 important_document

    # Memeriksa izin dengan perintah
    ls -l important_document

# 3. Mengubah izin folder

    # Pertama-tama, naikkan satu direktori
    cd ..

    # Dalam direktori ini, terdapat folder bernama "secret_folder". Lihat izinnya saat ini menggunakan "ls", tetapi kali ini dengan tanda "-ld" bukan "-l" karena akan melihat direktori, bukan file biasa
    ls -ld secret_folder/

    # Terkait file ini, harus tercantum pemilik harus memiliki semua izin, grup hanya boleh memiliki izin tulis dan pengguna selain pemilik dan grup tidak boleh memiliki izin. Maka dapat menggunakan perintah
    sudo chmod u+x secret_folder/

    # Memeriksa izinnya lagi untuk melihat apakah pemilik kini dapat membaca, menulis, dan mengeksekusi
    ls -ld secret_folder/

    # Memperbaiki izin grup, grup memiliki izin baca dan tidak memiliki izin tulis, yang dapat Anda perbaiki dengan dua perintah yang mirip. Hal tersebut dapat dilakukan dari urutan mana pun; "g" singkatan dari "group" (seperti "u" di perintah sebelumnya), lalu "w" singkatan dari "write" dan "r" singkatan dari "read"
    sudo chmod g+w secret_folder/
    sudo chmod g-r secret_folder/

    # Memeriksa izinnya lagi untuk melihat apakah grup hanya memiliki izin tulis dan pemilik memiliki izin yang sama seperti sebelumnya
    ls -ld secret_folder/

    # Menghapus izin baca dari semua pengguna lain menggunakan perintah di bawah ("o" singkatan dari "other")
    sudo chmod o-r secret_folder/

    # Melihat bahwa semua kriteria untuk file ini telah terpenuhi menggunakan ls lagi
    ls -ld secret_folder/

    # Menggunakan chmod seperti ini lebih mudah untuk diingat, tetapi memerlukan perintah yang jauh lebih banyak. Semua langkah sebelumnya juga dapat dilakukan menggunakan notasi numerik, seperti
    sudo chmod 720 secret_folder/

# 4. Mengubah pemilik

    # Sekarang Anda akan mengubah pemilik file. Dalam direktori Anda saat ini, terdapat folder bernama "taco". Gunakan ls untuk memeriksa izinnya dan melihat siapa pemilik filenya
    ls -ld taco/

    # Dari sini dapat dilihat bahwa saat ini pengguna root adalah pemilik file ini. Dalam mesin ini, terdapat akun pengguna lain bernama "cook". Lanjutkan dan jadikan "cook" sebagai pemilik file menggunakan perintah chown seperti berikut
    sudo chown cook /home/qwiklab/taco

    # Menggunakan ls lagi untuk melihat apakah pemilik filenya telah berhasil diubah
    ls -ld taco/

    # 4.1 Latihan lainnya

        # Terdapat beberapa file lainnya di mesin Anda yang dapat digunakan untuk berlatih. Pertama-tama, buka folder "documents"
        cd documents/

        # Dalam folder ini, terdapat file bernama "not_so_important_document". Lihat izinnya untuk melihat statusnya saat ini
        ls -l not_so_important_document

        # Pemiliknya dapat membaca dan menulis, grupnya dapat membaca, dan yang lain sama sekali tidak memiliki izin. Sekarang gunakan chmod untuk mengubah izin tersebut sehingga kriteria berikut terpenuhi: Pemilik memiliki semua izin, Grup memiliki izin baca dan tulis, Semua orang memiliki izin baca.
        # Untuk memberikan izin eksekusi kepada pemilik, Anda dapat menggunakan perintah yang sama seperti sebelumnya
        sudo chmod u+x not_so_important_document

        # Ingat, gunakan ls untuk memeriksa kembali bahwa semua yang Anda lakukan berperilaku sesuai harapan
        ls -l not_so_important_document

        # Grupnya sudah memiliki izin baca, jadi Anda hanya perlu menambahkan izin tulis
        sudo chmod g+w not_so_important_document
        ls -l not_so_important_document

        # Memberikan izin baca kepada semua orang. Anda dapat menggunakan argumen "o+r" untuk menambahkan izin baca untuk pengguna selain pemilik atau grup, tetapi Anda juga dapat menggunakan "a+r". Argumen tersebut menambahkan izin baca untuk semua orang (pemilik, grup, dan lainnya)
        # Karena pemilik dan grup sudah memiliki izin baca, tindakan ini hanya akan mengubah izin untuk orang lain, tetapi hasil akhirnya akan sama
        sudo chmod a+r not_so_important_document

        # Melihat izinnya lagi dan melihat apakah semua kriteria untuk file ini telah terpenuhi
        ls -l not_so_important_document

        # Seperti sebelumnya, Anda dapat memperoleh hasil yang sama menggunakan argumen numerik untuk menetapkan izin, tanpa harus mengubahnya secara inkremental. Berikut perintah yang memenuhi ketiga kriteria sekaligus
        sudo chmod 764 not_so_important_document

# 5. Menambahkan beberapa izin sekaligus

    # Cara menggunakan argumen non-numerik untuk menambahkan beberapa izin sekaligus. Dalam direktori saat ini, ada satu file lagi bernama "public_document". Pertama-tama, lihat izinnya saat ini
    ls -l public_document

    # Untuk file ini, Anda ingin membuat semua orang (pemilik, grup, dan lainnya) memiliki semua izin. Anda dapat menambahkan izin baca, tulis, dan eksekusi untuk semua orang sekaligus menggunakan perintah berikut
    sudo chmod a+rwx public_document

    # Dengan begitu, file dapat diakses oleh siapa saja karena setiap pengguna memiliki semua izin
    ls -l public_document

    # Dengan menggunakan bentuk argumen numerik chmod, hasil yang sama ini dapat diperoleh dengan perintah berikut
    sudo chmod 777 public_document

# Referensi : https://googlecoursera.qwiklabs.com/focuses/22045106?locale=id&parent=lti_session
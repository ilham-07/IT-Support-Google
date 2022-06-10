# 1. MD5 
    # Membuat file teks yang terdiri dari beberapa data
    echo 'This is some text in a file, just so we have some data' > file.txt

    # Membuat sum MD5 untuk file diatas dan menyimpannya
    md5sum file.txt > file.txt.md5

    # Melihat hash dengan perintah
    cat file.txt.md5

    # Memverifikasi hash sudah benar dan file aslinya belum diubah sejak sum dibuat
    md5sum -c file.txt.md5

# 2. Memverifikasi file yang tidak valid
    # Membuat salinan file
    cp file.txt badfile.txt

    # Membuat md5sum baru untuk file baru
    md5sum badfile.txt > badfile.txt.md5

    # Hash yang dihasilkan identik untuk file.txt dan terjadi karena hashing hanya melihat data bukan metadata
    cat badfile.txt.md5

    cat file.txt.md5

    # Membuka file dengan nano
    cat file.txt.md5

    # Memverifikasi hash kembali
    md5sum -c badfile.txt.md5

    # Melihat perbedaan hash file yang diedit, buat hash baru dan lakukan pemeriksaan
    md5sum badfile.txt > new.badfile.txt.md5

    cat new.badfile.txt.md5

# 3. SHA
    # 3.1 SHA1
        # Membuat sum SHA1 dan menyimpannya ke dalam suatu file
        shasum file.txt > file.txt.sha1

        # Menampilkan SHA1
        cat file.txt.sha1

        # Memverifikasi hash SHA1
        shasum -c file.txt.sha1

    # 3.2 SHA256
        # Membuat sum SHA256 file
        shasum -a 256 file.txt > file.txt.sha256

        # Menampilkan isi file SHA256
        cat file.txt.sha256

        # Memverifikasi sum SHA256
        shasum -c file.txt.sha256

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22100191?locale=id&parent=lti_session
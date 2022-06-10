# 1. Membuat kunci
    # 1.1 Membuat kunci pribadi
        # Membuat kunci pribadi RSA 2048-bit, lalu periksa kunci tersebut
        openssl genrsa -out private_key.pem 2048

        # Melihat kunci pribadi baru
        cat private_key.pem

    # 1.2 Membuat kunci public
        # Membuat kunci publik berdasarkan kunci pribadi
        openssl rsa -in private_key.pem -outform PEM -pubout -out public_key.pem

        # Melihat kunci publik
        cat public_key.pem

# 2. Mengenkripsi dan mendekripsi
    # Membuat file teks yang berisi sejumlah informasi yang ingin dlindungi dengan mengenkripsinya
    echo 'This is a secret message, for authorized parties only' > secret.txt

    # Mengenkripsi file menggunakan kunci publik
    openssl rsautl -encrypt -pubin -inkey public_key.pem -in secret.txt -out secret.enc

    # Melihat isi file yang dienkripsi
    nano ~/secret.enc

    # Mendekripsinya dan mendapatkan kembali isi aslinya dan harus menggunakan kunci pribadi untuk mendekripsi pesannya, karena yang digunakan untuk mengenkripsinya adalah kunci publik
    openssl rsautl -decrypt -inkey private_key.pem -in secret.enc

# 3. Membuat digest hash
    # Membuat digest hash dengan perintah
    openssl dgst -sha256 -sign private_key.pem -out 
    secret.txt.sha256 secret.txt

    # Memverifikasi file sejak pertama kali dibuat dan di hash
    openssl dgst -sha256 -verify public_key.pem -signature 
    secret.txt.sha256 secret.txt

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22099965?locale=id&parent=lti_session
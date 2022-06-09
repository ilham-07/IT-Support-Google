# 1. Menghentikan proses tertentu

    # Dari Windows PowerShell, Anda dapat menggunakan perintah Get-Process untuk menelusuri proses berdasarkan nama. Proses "totally_not_malicious" juga berjalan di mesin ini.
    Get-Process -Name "totally_not_malicious"

    # Untuk menghentikan proses, Anda dapat menggunakan taskkill lalu menentukan ID Proses atau PID proses
    taskkill /F /PID [PROCESS ID]

    # Untuk memverifikasi bahwa proses tersebut telah dihentikan, Anda dapat menelusurinya lagi
    Get-Process -Name "totally_not_malicious"

# 2. Menghentikan beberapa proses

    # Menggunakan "karakter pengganti" (tanda bintang) untuk mencari proses yang namanya berisi "razzle"
    Get-Process -Name "*razzle*"

    # Seperti sebelumnya, Anda dapat menggunakan taskkill satu kali untuk setiap proses "razzle"
    taskkill /F /PID [PROCESS ID]

    # Anda dapat menggunakan Get-Process lagi untuk memverifikasi bahwa proses tersebut telah dihentikan
    Get-Process -Name "*razzle*"

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22081491?locale=id&parent=lti_session
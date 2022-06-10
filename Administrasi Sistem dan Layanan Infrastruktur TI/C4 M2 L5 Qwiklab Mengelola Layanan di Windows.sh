#1. Berinteraksi dengan layanan melalui PowerShell
    #  Mendaftar ke semua layanan yang tersedia 
    Get-Service

    # Misalnya, kita dapat memperoleh informasi layanan wuauserv:
    Get-Service wuauserv

    # Memperoleh informasi selengkapnya terkait layanan
    Get-Service wuauserv | Format-List *

#2. Menghentikan dan memulai layanan
    # Memulai layanan Windows Update menggunakan perintah
    Start-Service wuauserv

    # Memverifikasi bahwa perintah ini berfungsi
    Get-Service wuauserv

    # Menghentikan layanan menggunakan perintah
    Stop-Service wuauserv

    # Melihat apakah perintah tersebut berfungsi
    Get-Service wuauserv

#3. Mengaktifkan layanan
     # Melihat bahwa layanan ScardSvr atau Smart Card tersebut dinonaktifkan
    Get-Service ScardSvr | Format-List *

    # Mencoba memulai layanan
    Start-Service ScardSvr

    # Mengubah layanan yang tidak dapat dimulai
    Set-Service ScardSvr -StartupType Manual

    # Memulai layanan kembali
    Start-Service ScardSvr

    # Periksa status layanan kembali
    Get-Service ScardSvr

#4. Mengaktifkan fitur tambahan
    # Mengaktifkan beberapa fitur yang ada di sistem Windows yang tidak diaktifkan secara default
    Install-WindowsFeature Web-WebServer,Web-Mgmt-Tools -IncludeAllSubFeature

    # Mengaktifkan fitur w3svc adalah layanan yang memungkinkan publikasi halaman web
    Get-Service w3svc

# Referensi: https://googlecoursera.qwiklabs.com/focuses/22097658?locale=id&parent=lti_session
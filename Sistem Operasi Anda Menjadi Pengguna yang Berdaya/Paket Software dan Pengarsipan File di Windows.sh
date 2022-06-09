# Referensi :  https://googlecoursera.qwiklabs.com/focuses/22078899?locale=id&parent=lti_session

# 1. Mengarsipkan file dengan Powershell

    # Membuka folder "Documents"
    cd C:\Users\Qwiklab\Documents\

    # Membuat arsip .zip (dengan nama Planets.zip)
    Compress-Archive -Path Earth, Mercury, Venus Planets.zip

#2. Menginstal dan meng-uninstal software menggunakan CLI Windows

    # Meng-uninstal GIMP

        # Meng-uninstal GIMP, sebuah editor foto, menggunakan perintah
        cmd.exe /c "C:\Program Files\GIMP 2\uninst\unins000.exe" /VERYSILENT /NORESTART

        # Memastikan GIMP tidak tersedia lagi di sistem
        Get-Package
    
    # Menginstal VLC

        # Mendownload dan menginstal VLC media player

        $VLC_URL = "https://download.videolan.org/vlc/last/win64/"

        $GET_HTML = Invoke-WebRequest $VLC_URL

        $FILE = $GET_HTML.Links | Select-Object @{Label='href';Expression={@{$true=$_.href}[$_.href.EndsWith('win64.exe')]}} | Select-Object -ExpandProperty href

        $URL = ($VLC_URL+$FILE)

        $DOWNLOAD_DIR = "C:\users\qwiklabs\Downloads\"

        $OUTPUT_FILE = ($DOWNLOAD_DIR+$FILE)

        (new-object System.Net.WebClient).DownloadFile($URL, $OUTPUT_FILE)

        cmd.exe /c $OUTPUT_FILE /S

        # Memastikan bahwa VLC telah berhasil diinstal menggunakan perintah
        Get-Package -Name *vlc*
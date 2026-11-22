$img = "$env:TEMP\image.jpg"
(New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/Baptiste-Galmiche/RubberDucky/main/image.jpg", $img)

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $img
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

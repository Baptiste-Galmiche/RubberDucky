$img = "$env:TEMP\anonymous.png"
(New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/Baptiste-Galmiche/RubberDucky/main/anonymous.png", $img)

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $img
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

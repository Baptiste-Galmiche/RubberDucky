$path = "$env:USERPROFILE\Desktop\hacked.txt"
Set-Content -Path $path -Value "Ce poste n'etait pas verrouille."
Start-Process notepad $path

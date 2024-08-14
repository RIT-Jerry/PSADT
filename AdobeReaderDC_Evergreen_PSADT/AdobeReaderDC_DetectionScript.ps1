$DisplayName = "Adobe Acrobat*"
$check = $false
Get-ChildItem -Path HKLM:\software\microsoft\windows\currentversion\uninstall -Recurse -ErrorAction SilentlyContinue | % {if ((Get-ItemProperty -Path $_.pspath).DisplayName -like $DisplayName) {$check = $true}}
Get-ChildItem -Path HKLM:\software\wow6432node\microsoft\windows\currentversion\uninstall -Recurse -ErrorAction SilentlyContinue | % {if ((Get-ItemProperty -Path $_.pspath).DisplayName -like $DisplayName) {$check = $true}}
if ($check) {Write-Host "Installed"}
else {}
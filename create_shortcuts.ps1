$appHtml = 'C:\Users\jwilc\BabyGirlCountdown\baby-girl-countdown.html'
$launcher = 'C:\Users\jwilc\BabyGirlCountdown\launch-baby-girl-countdown-app.bat'
$icon = 'C:\Users\jwilc\BabyGirlCountdown\baby-girl-countdown-icon.ico'
$desktop = [Environment]::GetFolderPath('Desktop')
$programs = [Environment]::GetFolderPath('Programs')

$ws = New-Object -ComObject WScript.Shell

$desktopShortcut = $ws.CreateShortcut((Join-Path $desktop 'Baby Girl Countdown.lnk'))
$desktopShortcut.TargetPath = $launcher
$desktopShortcut.WorkingDirectory = 'C:\Users\jwilc\BabyGirlCountdown'
$desktopShortcut.IconLocation = "$icon,0"
$desktopShortcut.Save()

$startShortcut = $ws.CreateShortcut((Join-Path $programs 'Baby Girl Countdown.lnk'))
$startShortcut.TargetPath = $launcher
$startShortcut.WorkingDirectory = 'C:\Users\jwilc\BabyGirlCountdown'
$startShortcut.IconLocation = "$icon,0"
$startShortcut.Save()

Write-Host 'shortcuts updated'

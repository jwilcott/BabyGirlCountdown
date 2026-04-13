@echo off
set "APP_HTML=C:\Users\jwilc\BabyGirlCountdown\baby-girl-countdown.html"
set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" (
  start "" "%CHROME%" --app="file:///%APP_HTML:\=/%"
) else (
  start "" "%APP_HTML%"
)

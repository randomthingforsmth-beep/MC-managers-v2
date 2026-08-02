@echo off
set "targetDir=C:\Users\%USERNAME%\Downloads\MC manager\code\core app"
set "url=https://githubusercontent.com"

:: Create the destination folder if it does not exist
if not exist "%targetDir%" (
    mkdir "%targetDir%"
)

echo Downloading java64.bat...
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%targetDir%\java64.bat'"

echo Done! File saved to %targetDir%
pause

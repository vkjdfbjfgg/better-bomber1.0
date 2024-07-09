@echo off
setlocal

REM URL of the file to download
set "URL=http://hgd-speedtest-1.tele2.net/100GB.zip"

REM Destination folder where the file will be saved
set "DESTINATION=C:\Downloads"

REM Loop to download the file every second
:DOWNLOAD_LOOP
curl -o "%DESTINATION%\100GB.zip" "%URL%"

REM Wait for 1 second before attempting the download again
timeout /t 1 /nobreak >nul

REM Uncomment the next line if you want to continuously download
REM goto DOWNLOAD_LOOP

endlocal

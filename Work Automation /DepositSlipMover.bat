@echo off
setlocal enabledelayedexpansion

:: Source and destination folders
set "sourceFolder=C:\Users\crankin\Downloads"
set "destinationFolder=K:\OCCC Shared files\1. Deposits & FY Calendar Backup\Deposit Slip Backups"

:: Check if destination folder exists; create it if not
if not exist "%destinationFolder%" mkdir "%destinationFolder%"

:: Loop through PDF files in the source folder
for %%A in ("%sourceFolder%\*.pdf") do (
    :: Check if the file name starts with "Ref#"
    set "fileName=%%~nA"
    if "!fileName:~0,4!"=="Ref#" (
        :: Move the file to the destination folder
        move "%%A" "%destinationFolder%\"
    )
)

:: Display a message
echo Deposit Slip PDF files starting moved to "%destinationFolder%"

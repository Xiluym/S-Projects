@echo off
setlocal enabledelayedexpansion

:: Source folder
set "sourceFolder=C:\Users\crankin\Downloads"

:: Destination folder
set "destinationFolder=K:\OCCC Shared files\1. Deposits & FY Calendar Backup\FY 23-24 Contracts"

:: Loop through PDF files in the source folder
for %%A in ("%sourceFolder%\*.pdf") do (
    :: Get the file name without extension
    set "fileName=%%~nA"
    
    :: Extract the date portion from the file name (e.g., "11_18_2023" becomes "11_2023")
    set "datePart=!fileName:~0,6!!fileName:~-4!"

    :: Determine the month from the date
    set "month=!datePart:~0,2!"
    
    :: Create the folder if it doesn't exist
    if not exist "%destinationFolder%\!month!\" (
        mkdir "%destinationFolder%\!month!"
    )
    
    :: Move the file to the destination folder
    move "%%A" "%destinationFolder%\!month!\"
)

:: Display a message
echo Contract PDF files moved to "%destinationFolder%"

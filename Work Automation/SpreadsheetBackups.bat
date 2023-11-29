::open browser and download FY 23-24 Tracker
start "" https://docs.google.com/spreadsheets/d/123tic0NmoX8ruITFqAZnrPEoz7e6lgXRSm9FgK-I5FA/export?exportFormat=xlsx
::create timeout to give time to download
timeout /t 10
::move download to overwrite old version
move /Y "C:\Users\crankin\Downloads\FY 23-24 Calendar.xlsx" "K:\OCCC Shared files\1. Deposits & FY Calendar Backup\FY 23-24 Calendar.xlsx"
::open browser and download Deposits File    
start "" https://docs.google.com/spreadsheets/d/1ye3ILJbwmTmG9TrGdihau1EFWO-tsziGueWSAcR2qpc/export?exportFormat=xlsx
::create timeout to give time to download
timeout /t 10
::move download to overwrite old version
move /Y "C:\Users\crankin\Downloads\Deposits FY23-24.xlsx" "K:\OCCC Shared files\1. Deposits & FY Calendar Backup\Deposits FY23-24.xlsx"
::close the browser once done downloading
taskkill /F /IM msedge.exe /T

:: After downloading, you can add the following line to delete all files in the Downloads folder:
del /q "%USERPROFILE%\Downloads\*"

:: Display a message indicating that the Downloads folder has been cleared
echo Downloads folder has been cleared.

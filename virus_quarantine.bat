@echo off
setlocal

:: Set the directory to scan (by default, it scans the C: drive, but you can modify this)
set scan_dir=C:\

:: Create a folder to store suspicious files
set quarantine_dir=%USERPROFILE%\Desktop\VirusQuarantine
mkdir "%quarantine_dir%"

:: Create a log file to store paths of suspicious files
set log_file=%USERPROFILE%\Desktop\virus_log.txt
echo Virus Scan Log > "%log_file%"
echo ============================== >> "%log_file%"

:: Define suspicious file extensions (you can modify these based on your needs)
set extensions=exe bat dll vbs js scr

:: Loop through each suspicious file type and search in the defined directory
for %%e in (%extensions%) do (
    echo Scanning for *.%%e files...
    for /r "%scan_dir%" %%f in (*.%%e) do (
        echo Found: %%f
        echo %%f >> "%log_file%"
        :: Move the suspicious file to the quarantine directory
        move "%%f" "%quarantine_dir%\"
    )
)

:: Create a zip of quarantined files (using Windows' built-in compression or use an external zip tool)
powershell Compress-Archive -Path "%quarantine_dir%\*" -DestinationPath "%USERPROFILE%\Desktop\quarantine.zip"

:: Inform the user
echo Scan completed! Suspicious files moved to %quarantine_dir% and zipped into quarantine.zip on your Desktop.
echo Log file created at %log_file%.
pause

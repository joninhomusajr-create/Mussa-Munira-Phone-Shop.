@echo off
REM ============================================
REM Open Website in Browser
REM ============================================
REM This script opens the website in your default browser

cd /d "%~dp0"

echo Opening website in default browser...
echo URL: file://%cd%\index.html

timeout /t 1 /nobreak

start file://%cd%\index.html

timeout /t 2 /nobreak
echo Website opened! You can now browse and test.
echo.
echo Note: For proper testing with search and cart functionality,
echo use the local server scripts:
echo   - start-server.bat (Batch file)
echo   - start-server.ps1 (PowerShell)
echo.
pause

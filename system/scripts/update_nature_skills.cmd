@echo off
setlocal
set "SCRIPT_DIR=%~dp0"

echo Nature Skills updater
echo =====================
echo.

powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%update_nature_skills.ps1" %*
set "EXIT_CODE=%ERRORLEVEL%"

echo.
if "%EXIT_CODE%"=="0" (
    echo Finished successfully.
) else (
    echo The updater stopped with exit code %EXIT_CODE%.
    echo Send the message above to Codex if you need help.
)
echo.
pause
exit /b %EXIT_CODE%

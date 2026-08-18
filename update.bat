@echo off
cd /d "%~dp0"
set PATH=%PATH%;C:\Program Files\GitHub CLI
git add -A
git commit -m "Update tools"
git push
echo.
echo Done. Live in ~30 seconds at:
echo https://johnjrodriguez01.github.io/poker-tools/
echo.
pause

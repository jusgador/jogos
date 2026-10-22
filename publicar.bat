@echo off
rem Publica a página e os jogos no GitHub Pages; só vai o que tem commit. Ver publicar.sh.
"C:\Program Files\Git\bin\bash.exe" "%~dp0publicar.sh" %*
echo.
pause

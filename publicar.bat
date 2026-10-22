@echo off
rem Publica os quatro jogos no GitHub Pages; só envia o que mudou. Ver publicar.sh.
"C:\Program Files\Git\bin\bash.exe" "%~dp0publicar.sh" %*
echo.
pause

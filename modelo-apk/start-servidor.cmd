@echo off
cd /d "%~dp0"
echo Iniciando servidor em http://localhost:8080 (e no IP da rede local)...
echo Abra esse endereco no celular (mesma rede Wi-Fi) e use "Instalar app".
echo Para parar: CTRL+C
where npx >nul 2>nul
if %errorlevel%==0 (
  npx --yes http-server . -p 8080 -a 0.0.0.0 -c-1
) else (
  echo Node.js/npx nao encontrado. Instale Node.js: https://nodejs.org
  pause
)

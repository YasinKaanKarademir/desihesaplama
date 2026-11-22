@echo off
rem Desi Hesaplama programini acar. Bu dosya index.html ile ayni klasorde durmali.
set "SAYFA=%~dp0index.html"
if not exist "%SAYFA%" (
  echo index.html bulunamadi. Bu dosyayi index.html ile ayni klasore koyun.
  pause
  exit /b
)
set "URL=file:///%SAYFA:\=/%"
set "URL=%URL: =%%20%"
rem Once uygulama penceresi olarak (Edge veya Chrome), olmazsa varsayilan tarayicida ac
for %%B in ("%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe") do (
  if exist %%B (
    start "" %%B --app="%URL%" --window-size=1280,860
    exit /b
  )
)
start "" "%SAYFA%"

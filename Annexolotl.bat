@echo off
setlocal
set "APP_HTML=%~dp0annexolotl.html"

:: Check common Microsoft Edge locations first (standard on Windows 10/11)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_HTML:\=/%" --window-size=1040,760
    exit /b 0
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_HTML:\=/%" --window-size=1040,760
    exit /b 0
)

:: Check Google Chrome locations next
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="file:///%APP_HTML:\=/%" --window-size=1040,760
    exit /b 0
)
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="file:///%APP_HTML:\=/%" --window-size=1040,760
    exit /b 0
)
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" --app="file:///%APP_HTML:\=/%" --window-size=1040,760
    exit /b 0
)

:: Fallback: open in default browser
start "" "%APP_HTML%"
exit /b 0

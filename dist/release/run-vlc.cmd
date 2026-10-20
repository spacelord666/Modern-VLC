@echo off
REM Launch script for Modern VLC build
setlocal
set "VLCPATH=%~dp0"
set "PATH=%VLCPATH%;%PATH%"
set "VLC_PLUGIN_PATH=%VLCPATH%\plugins"
start "" "%VLCPATH%\vlc.exe" %*
endlocal
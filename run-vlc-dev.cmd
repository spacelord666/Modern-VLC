@echo off
REM ============================================================
REM  Launcher for the locally built VLC (LiveWire working tree)
REM
REM  The out-of-tree build keeps the real vlc.exe in bin\.libs,
REM  and it needs the MSYS2 runtime, the freshly built libvlc /
REM  libvlccore, and the plugin/Qt search paths on the
REM  environment. A .lnk cannot set those, so it points here.
REM
REM  Any arguments are forwarded to vlc.exe, e.g.
REM      run-vlc-dev.cmd --qt-pin-controls
REM ============================================================
setlocal

set "VLCBUILD=C:\Users\a11en\Documents\LiveWire\vlc\win64"
set "QTDIR=C:\msys64\mingw64"

REM MSYS2 runtime DLLs + the out-of-tree libvlccore / libvlc
set "PATH=%QTDIR%\bin;%VLCBUILD%\lib\.libs;%VLCBUILD%\src\.libs;%PATH%"

REM let VLC find its plugins, and the plugins find Qt's plugins/QML modules
set "VLC_PLUGIN_PATH=%VLCBUILD%\modules"
set "QT_PLUGIN_PATH=%QTDIR%/share/qt6/plugins"
set "QML_IMPORT_PATH=%QTDIR%/share/qt6/qml"
set "QML2_IMPORT_PATH=%QTDIR%/share/qt6/qml"

start "" "%VLCBUILD%\bin\.libs\vlc.exe" %*

endlocal

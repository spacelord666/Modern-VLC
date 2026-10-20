# Building Modern VLC UI from Source

This guide explains how to apply the modern UI changes to a VLC source tree and build it on Windows with MSYS2/MinGW64.

## Prerequisites

- [MSYS2](https://www.msys2.org/) installed (default: C:\msys64)
- Git
- VLC build dependencies for Windows
- Qt6 development tools

## Getting the Source

`ash
git clone https://github.com/videolan/vlc.git
cd vlc
git checkout a5538c5  # The base version for these changes
`

## Applying the Patches

### Option 1: Apply the unified diff
`ash
git apply modern-vlc-ui.patch
`

### Option 2: Copy the modified files
Copy all files from the patches/ directory to their corresponding locations in the VLC source tree, overwriting the originals.

## Building

### Setup Environment
`ash
export MSYSTEM=MINGW64
export PATH="/c/msys64/mingw64/bin:/c/msys64/usr/bin:/bin"
`

### Configure
`ash
# Follow VLC's standard Windows build process
# See https://wiki.videolan.org/Win32CompileMSYS2/
./configure --host=x86_64-w64-mingw32 --enable-qt
`

### Compile
`ash
make -j
`

### Build QML Assets (if needed)
If you modify QML files after building, regenerate assets:
`ash
rcc --name playercontrols_assets -o modules/gui/qt/playercontrols/qmlassets.cpp \
    modules/gui/qt/playercontrols/qmldir.qrc modules/gui/qt/playercontrols/res.qrc
`

Then rebuild the Qt module:
`ash
make -C modules/gui/qt -j6
`

## Running

Use the provided un-vlc-dev.cmd script which sets up all necessary environment variables, or manually set:

`cmd
set PATH=C:\msys64\mingw64\bin;%VLCBUILD%\lib\.libs;%VLCBUILD%\src\.libs;%PATH%
set VLC_PLUGIN_PATH=%VLCBUILD%\modules
set QT_PLUGIN_PATH=C:\msys64\mingw64\share\qt6\plugins
set QML_IMPORT_PATH=C:\msys64\mingw64\share\qt6\qml
set QML2_IMPORT_PATH=C:\msys64\mingw64\share\qt6\qml
`

## Notes

- These changes are designed for VLC 4.0.0-dev on Windows with Qt6
- Some build fixes were also applied (gnutls linking, plugin loading, QML module resolution) - see the patch for details
- The built binary will be in win64/bin/.libs/vlc.exe in an out-of-tree build, or in/ depending on build configuration
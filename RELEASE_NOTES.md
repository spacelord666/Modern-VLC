# Modern VLC UI - Release 1.0.0

A Windows build of VLC 4.0.0-dev featuring a modernized Qt/QML player interface.

## Changes
This build includes the Juxtopposed-inspired UI redesign with updated control bar, modernized play button styling, refreshed slider/volume controls, and updated design tokens.

## How to run
1. Extract the archive
2. Run un-vlc.cmd (sets up required environment variables and plugin paths)
3. Or double-click lc.exe if you already have Qt6 DLLs in PATH

## Notes
- Built for Windows x64 (MinGW64)
- Requires MSYS2/MinGW64 Qt6 runtime DLLs if running standalone without setting PATH (the included run-vlc.cmd handles this)
- Based on VLC 4.0.0-dev (commit a5538c5)
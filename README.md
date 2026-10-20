# Modern VLC UI (Juxtopposed-inspired redesign)

This is a locally modified build of [VLC media player](https://github.com/videolan/vlc) (VLC 4.0.0-dev) featuring a modernized Qt/QML interface inspired by Juxtopposed's VLC redesign concept.

## What Changed

The redesign updates the in-player control bar with a modern look:

- **PlayButton** - Rounded square play/pause button with orange gradient (`#e25b01` → `#f89a06`), white play/pause glyph, properly sized for the new layout. Fixed the white-on-white glyph issue present in the initial redesign.
- **ControlBar** - Updated styling and spacing
- **TopBar** - Modernized title bar
- **SliderBar** - Refreshed seek bar styling
- **VolumeWidget** - Updated volume controls
- **VLCStyle** - New design tokens for the modern player UI (button sizes, radii, spacing)

## Building From Source (Windows, MSYS2/MinGW64)

### Prerequisites

1. [MSYS2](https://www.msys2.org/) with MINGW64 environment
2. Qt6 development packages installed via pacman
3. VLC build dependencies

### Build Steps

```bash
# From the VLC source directory
export MSYSTEM=MINGW64
export PATH="/c/msys64/mingw64/bin:/c/msys64/usr/bin:/bin"

# Configure (example)
./configure --enable-qt --host=x86_64-w64-mingw32 ...

# Build
make -j$(nproc)
```

### Running the Dev Build

A launcher script is included (`run-vlc-dev.cmd`) that sets up the necessary environment variables:

```cmd
run-vlc-dev.cmd
```

Or use the included shortcut. The script sets up `PATH`, `VLC_PLUGIN_PATH`, `QT_PLUGIN_PATH`, and `QML_IMPORT_PATH` to use the locally built binaries.

## License

This project is based on VLC media player, which is free software licensed under the GNU General Public License. 

- **GPL v2 or later** - See [COPYING](COPYING)
- **LGPL v2.1 or later** (for libraries) - See [COPYING.LIB](COPYING.LIB)

The full license information and source can be found on the [official VLC GitHub repository](https://github.com/videolan/vlc).

All modifications in this repository are released under the same GPL license terms.

## Notes

- These changes are local modifications to the VLC source tree for UI experimentation.
- The compiled binary (`dist/release/vlc.exe`) is provided as a GitHub release asset for convenience.
- This build is for Windows (MinGW64). Other platforms would require different build procedures.
- No commits were made to the upstream VLC repository - all changes are in the working tree.

## Version

Based on VLC 4.0.0-dev (commit a5538c5)

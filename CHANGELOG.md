# Changelog

## [1.0.0] - 2026-10-20

### Changed - Modern UI Redesign
- Updated PlayButton.qml: Changed glyph color from black to white, adjusted height to use VLCStyle.playerPlayButtonSize (44dp), changed radius to VLCStyle.playerPlayButtonRadius (12dp). Fixed inner rectangle to remain transparent at rest while preserving press-and-hold feedback.
- Updated ControlBar.qml - Modernized control bar styling
- Updated TopBar.qml - Refreshed top bar appearance
- Updated SliderBar.qml - Updated seek bar styling
- Updated VolumeWidget.qml - Modernized volume control
- Updated Player.qml, PlayerControlbarControls.qml, PlayerToolbarVisibilityFSM.qml - UI refinements
- Updated VLCStyle.qml - Added/updated design tokens for modern player appearance
- Updated controlbar_profile_model.cpp and control_list_model.hpp - Control model adjustments

### Fixed - Build System & Compatibility
- in/winvlc.c - Removed DLL search restriction (commented out SetDefaultDllDirectories) to allow Qt QML plugin dependencies to resolve via PATH
- modules/gui/qt/scripts/genqmldir.py - Fixed backslash handling in QML module prefer paths for Windows compatibility
- src/win32/plugin.c - Added LOAD_LIBRARY_SEARCH_LIBRARY_PATH and adjusted load flags for better DLL resolution
- Various build system tweaks (contrib build rules for gcrypt, gettext, gnutls, gpg-error, lua, zlib; goom patch; main.mak, qtshadertools, extras/package/win32/build.sh, modules/gui/qt/Makefile.am, modules/gui/qt/meson.build; qrc2rsp.py, static_dirs.py, check_qml_module.py)

### Added
- Desktop shortcut and launcher (un-vlc-dev.cmd) for the built version
- modern-vlc-ui.patch with all source changes
- Extracted modified QML files in patches/ for easy reference

### Base
- Based on VLC 4.0.0-dev (commit a5538c5, "package/win32: install after building if an install folder is set")
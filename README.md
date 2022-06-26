# AutoHotkey scripts

This is the repository where I keep my AutoHotkey scripts.

To use any of the scripts here, make sure you have downloaded and installed [AutoHotKey](https://www.autohotkey.com/).

## move_window_to_other_desktop.ahk

This script adds the feature to move a window to another virtual desktop using keyboard shortcuts, which Windows 11 lacks by default. It is based on an existing [answer](https://superuser.com/a/1708146/1185399) on SuperUser.

### Shortcuts

<kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>&rightarrow;</kbd>: Move current window to the next desktop

<kbd>Win</kbd>+<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>&leftarrow;</kbd>: Move current window to the previous desktop

### Installation

1.  Clone the [VD.ahk](https://github.com/FuPeiJiang/VD.ahk) repository (it is an AutoHotkey library adding several script functions for managing virtual desktops) by running `git clone https://github.com/FuPeiJiang/VD.ahk` inside this folder.
2.  Execute `move_window_to_other_desktop.ahk` with AutoHotkey (e.g. by double-clicking in File Explorer). The shortcuts should already work.
3.  To make sure the script runs on every Windows startup, create a shortcut to it and put it into the folder for your Startup programs. Open that folder by typing `shell:run` in the window that pops up after you hit <kbd>Win</kbd> + <kbd>R</kbd>.

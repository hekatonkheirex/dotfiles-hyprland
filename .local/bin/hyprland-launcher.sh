#!/bin/sh

cd ~

# Log WLR errors and logs to the hyprland log. Recommended
export HYPRLAND_LOG_WLR=1

# Tell XWayland to use a cursor theme
# export XCURSOR_THEME=Catppuccin-Mocha-Lavender
# export GTK_THEME=Catppuccin-Mocha-Standard-Lavender-Dark

# Set a cursor size
export XCURSOR_SIZE=24

# Example IME Support: fcitx
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

## PATHS
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

## EDITOR
export EDITOR=nvim

## JAVA
export _JAVA_AWT_WM_NONREPARENTING=1

## FIREFOX
export MOZ_ENABLE_WAYLAND=1

## GTK environment
export TDESKTOP_DISABLE_GTK_INTEGRATION=1
# export CLUTTER_BACKEND="wayland"
# export BEMENU_BACKEND="wayland"

## QT environment
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1

## SDL environment
export SDL_VIDEODRIVER="wayland"

## Elementary environment
export ELM_DISPLAY="wl"
export ECORE_EVAS_ENGINE="wayland-egl"
export ELM_ENGINE="wayland-egl"
export ELM_ACCEL="opengl"

## General
export GDK_BACKEND="wayland"
export NO_AT_BRIDGE=1
export WINIT_UNIX_BACKEND="wayland"
export DBUS_SESSION_BUS_ADDRESS
export DBUS_SESSION_BUS_PID
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export WLR_NO_HARDWARE_CURSORS=1
export WLR_RENDERER_ALLOW_SOFTWARE=1
export VDPAU_DRIVER=radeonsi
export LIBVA_DRIVER_NAME=radeonsi
eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec Hyprland

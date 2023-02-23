#!/bin/sh

NUMBER_OF_MONITORS_CONNECTED=$(xrandr -q | grep ' connected ' | wc -l)

WALLPAPER_CONFIG_BG_SAVED="$HOME/.config/i3/wallpaper-configs/${NUMBER_OF_MONITORS_CONNECTED}_bg_saved.cfg"
WALLPAPER_CONFIG_NITROGEN="$HOME/.config/i3/wallpaper-configs/${NUMBER_OF_MONITORS_CONNECTED}_nitrogen.cfg"

NITROGEN_CONFIG_BG_SAVED="$HOME/.config/nitrogen/bg-saved.cfg"
NITROGEN_CONFIG_NITROGEN="$HOME/.config/nitrogen/nitrogen.cfg"

if [[ -f "$WALLPAPER_CONFIG_BG_SAVED" && -f "$WALLPAPER_CONFIG_NITROGEN" ]]; then
    cp "$WALLPAPER_CONFIG_BG_SAVED" "$NITROGEN_CONFIG_BG_SAVED"
    cp "$WALLPAPER_CONFIG_NITROGEN" "$NITROGEN_CONFIG_NITROGEN"
else
    nitorgen --restore
fi

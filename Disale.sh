#!/bin/bash
# Disable Stream Recording
# This script removes the stream recording configuration and emulator entries

RECORD_CONFIG="/home/pi/RetroPie/recording/twitch.cfg"
CONFIGDIR="/opt/retropie/configs"

echo "Disabling Stream Recording."

# Remove recording config
if [ -f "$RECORD_CONFIG" ]; then
    rm -f "$RECORD_CONFIG"
    echo "Removed recording config: $RECORD_CONFIG"
else
    echo "Recording config not found, skipping."
fi

# Remove stream recording entries from emulator configs
for emu in 2048 4do nes snes; do
    emu_cfg="$CONFIGDIR/$emu/emulators.cfg"
    if [ -f "$emu_cfg" ]; then
        if grep -q "record-twitch" "$emu_cfg" 2>/dev/null; then
            sed -i '/record-twitch/d' "$emu_cfg"
            echo "Removed stream recording entry from $emu_cfg"
        fi
    fi
done

echo "Stream Recording disabled."

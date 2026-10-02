#!/bin/bash
set -euo pipefail

echo "Disabling Stream Recording."

RECORD_CONFIG="${HOME}/RetroPie/recording/twitch.cfg"
CONFIGDIR="/opt/retropie/configs"

# Remove stream recording entries from emulator configs
for cfg in "$CONFIGDIR"/*/emulators.cfg; do
    if [ -f "$cfg" ]; then
        sed -i '/record-twitch/d' "$cfg"
        echo "Removed stream recording from: $cfg"
    fi
done

# Remove recording config
if [ -f "$RECORD_CONFIG" ]; then
    rm -f "$RECORD_CONFIG"
    echo "Removed recording config: $RECORD_CONFIG"
fi

echo "Stream recording disabled."

#!/bin/bash

## CONFIG
RECORD_CONFIG="/home/pi/RetroPie/recording/twitch.cfg"
CONFIGDIR="/opt/retropie/configs"
STREAM_URL="streamurl"
STREAM_KEY="streamkey"
## CONFIG END



echo "Enableing Stream Recording."
echo "vcodec = libx264" > $RECORD_CONFIG
echo "acodec = libfdk_aac" >> $RECORD_CONFIG
echo "pix_fmt = yuv420p" >> $RECORD_CONFIG
echo "threads = 2" >> $RECORD_CONFIG
echo "scale_factor = 1" >> $RECORD_CONFIG
echo "format = flv" >> $RECORD_CONFIG
echo "video_preset = ultrafast" >> $RECORD_CONFIG
echo "video_profile = main" >> $RECORD_CONFIG
echo "video_tune = animation" >> $RECORD_CONFIG
echo "video_bufsize = 512k" >> $RECORD_CONFIG
echo "video_minrate = 512k" >> $RECORD_CONFIG
echo "video_maxrate = 512k" >> $RECORD_CONFIG
echo "video_r = 60" >> $RECORD_CONFIG
echo "video_g = 120" >> $RECORD_CONFIG
echo "video_keyint_min = 60" >> $RECORD_CONFIG
echo "sample_rate = 44100" >> $RECORD_CONFIG
echo "audio_preset = aac_he_v2" >> $RECORD_CONFIG
echo "audio_global_quality = 1" >> $RECORD_CONFIG
nano $RECORD_CONFIG
echo "done creating recording config in $RECORD_CONFIG"

echo "Emulator Configuration"

echo "Now we need to add an entry into our emulator config file that will start a twitch stream rather than a regular recording or normal emulation."

#Note: For more information on emulator config files checkout my first recording howto.

#echo "For this example we are going to edit the NES system’s config file"
#Then we need to add an entry that will stream to Twitch. We will call it: ‘lr-fceumm-record-twitch’ and we will use the following command:

#echo 'lr-fceumm-record-twitch = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fceumm/fceumm_libretro.so --config /opt/retropie/configs/nes/retroarch.cfg --record rtmp://live.twitch.tv/app/$STREAM_KEY --recordconfig /home/pi/RetroPie/recording/twitch.cfg %ROM%"' >> $CONFIGDIR/nes/emulators.cfg
#nano $CONFIGDIR/nes/emulators.cfg

MENU_SELECT(){
choice=$(whiptail --title "Check list example" --separate-output --checklist \
"Choose what emulator you would like to enable stream recording for" 20 78 4 \
"NES" "NES emulator." ON \
"SNES" "SNES emulator." OFF \
"OTHER" "Please specify" OFF \
"REMOTE_MOUNT" "Allow mounting of remote devices" OFF 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "The chosen options are:" $choice
    if [ $choice = NES ]; then
    echo 'lr-fceumm-record-twitch = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fceumm/fceumm_libretro.so --config /opt/retropie/configs/nes/retroarch.cfg --record rtmp://live.twitch.tv/app/$STREAM_KEY --recordconfig /home/pi/RetroPie/recording/twitch.cfg %ROM%"' >> $CONFIGDIR/nes/emulators.cfg
    

    nano $CONFIGDIR/nes/emulators.cfg
    echo "NES stream recording enabled"
    fi
    if [ $choice = SNES ]; then
    nano $CONFIGDIR/snes/emulators.cfg
    echo "SNES stream recording enabled"
    fi
    if [ $choice = OTHER ]; then
    echo "Please specify which retroarch core to enable stream recording for:"
    fi
else
    echo "You chose Cancel."
fi
}
MENU_SELECT
#lr-fceumm-record-twitch = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-fceumm/fceumm_libretro.so --config /opt/retropie/configs/nes/retroarch.cfg --record rtmp://live.twitch.tv/app/$$STREAM_KEY$$ --recordconfig /home/pi/RetroPie/recording/twitch.cfg %ROM%"

#Where we specify the Twitch config file that we created earlier:

#--recordconfig /home/pi/RetroPie/recording/twtich.cfg

#And the RMTP Twitch URL that we will stream to:

#--record rtmp://live.twitch.tv/app/$$STREAM_KEY$$

#Where $$STREAM_KEY$$ is the stream key that you got from your Twitch account earlier.

#Then save (CTRL+O) and exit (CTRL+X).

#Note: You may want to check out the list of Twitch servers and choose one that is the closest to you.

#Streaming Your Gameplay

#That’s it for the setup. Now you can go into the NES section on your RetroPie and start a game. While the game is loading hit the ‘A’ button to enter the configuration and select ‘Select emulator for rom’. There you will see the new ‘lr-fceumm-record-twitch’ entry that we added. Select it (it will now be the default so be sure to change it if you don’t want to stream next time you play.) and when you launch the game you should now be streaming to twitch.
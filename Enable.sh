#!/bin/bash
echo "Enableing Stream Recording."
echo "vcodec = libx264" > /home/pi/RetroPie/recording/twitch.cfg
echo "acodec = libfdk_aac" >> /home/pi/RetroPie/recording/twitch.cfg
echo "pix_fmt = yuv420p" >> /home/pi/RetroPie/recording/twitch.cfg
echo "threads = 2" >> /home/pi/RetroPie/recording/twitch.cfg
echo "scale_factor = 1" >> /home/pi/RetroPie/recording/twitch.cfg
echo "format = flv" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_preset = ultrafast" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_profile = main" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_tune = animation" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_bufsize = 512k" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_minrate = 512k" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_maxrate = 512k" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_r = 60" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_g = 120" >> /home/pi/RetroPie/recording/twitch.cfg
echo "video_keyint_min = 60" >> /home/pi/RetroPie/recording/twitch.cfg
echo "sample_rate = 44100" >> /home/pi/RetroPie/recording/twitch.cfg
echo "audio_preset = aac_he_v2" >> /home/pi/RetroPie/recording/twitch.cfg
echo "audio_global_quality = 1" >> /home/pi/RetroPie/recording/twitch.cfg
nano /home/pi/RetroPie/recording/twitch.cfg

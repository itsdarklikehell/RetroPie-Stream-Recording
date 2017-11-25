#!/bin/bash
echo "Enableing Stream Recording."
nano /home/pi/RetroPie/recording/twitch.cfg

echo "vcodec = libx264" > /home/pi/RetroPie/recording/twitch.cfg
acodec = libfdk_aac
pix_fmt = yuv420p
threads = 2
scale_factor = 1
format = flv
video_preset = ultrafast
video_profile = main
video_tune = animation
video_bufsize = 512k
video_minrate = 512k
video_maxrate = 512k
video_r = 60
video_g = 120
video_keyint_min = 60
sample_rate = 44100
audio_preset = aac_he_v2
audio_global_quality = 1

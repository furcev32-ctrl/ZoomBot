# /bin/bash

# Start Recording
resulution=$(xdpyinfo | awk '/dimensions/{print $2}')
ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i default output.mp4&python3 main.py
# Join Next Meeting


# Finish recorin
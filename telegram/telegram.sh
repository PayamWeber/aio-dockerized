if [ ! -d "appdata" ] 
then
    mkdir appdata
fi

docker run --rm -it --name telegram \
       --hostname=$(hostname) \
       -e DISPLAY=unix$DISPLAY \
       -e PULSE_SERVER=unix:$XDG_RUNTIME_DIR/pulse/native \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v "/home/$(whoami)/.Xauthority:/home/user/.Xauthority" \
       -v $XDG_RUNTIME_DIR/pulse:$XDG_RUNTIME_DIR/pulse \
       -v /etc/localtime:/etc/localtime:ro \
       -v $PWD/appdata:/home/user/.local/share/TelegramDesktop/ \
       xorilog/telegram
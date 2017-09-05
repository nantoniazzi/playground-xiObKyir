# echo "TECHIO> terminal"
export DISPLAY=:99
/usr/bin/Xvfb :99 -screen 0 1024x768x24 -ac +extension GLX +extension RANDR +render -noreset &
x11vnc -ncache 10 -localhost -display :99 &
xclock &
cd noVNC/utils
./launch.sh --vnc localhost:5900 &
echo "TECHIO> open -p 6080 /vnc-redirect.html"
sleep 60

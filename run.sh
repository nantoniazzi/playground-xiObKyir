export DISPLAY=:99

/usr/bin/Xvfb :99 -screen 0 1024x600x24 -ac +extension GLX +extension RANDR +render -noreset &>/dev/null &
x11vnc -shared -ncache 10 -localhost -display :99 &>/dev/null &
cd noVNC/utils
./launch.sh --vnc localhost:5900 &>/dev/null &
fluxbox &>/dev/null &

echo "TECHIO> open -p 6080 /vnc_lite.html"
echo "TECHIO> terminal -i 'export DISPLAY=:99;clear; sleep 1; gimp &>/dev/null &'"
sleep 180

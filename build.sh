export DEBIAN_FRONTED=noninteractive
apt-get update
#apt-get -y install ca-certificates
apt-get -y install xvfb x11vnc x11-apps net-tools git ca-certificates python apt-utils python-numpy gimp fluxbox
git config --global http.sslverify false
git clone http://github.com/novnc/noVNC.git
mv vnc-redirect.html noVNC/
/usr/bin/Xvfb :99 -screen 0 1024x550x24 -ac +extension GLX +extension RANDR +render -noreset &>/dev/null &
fluxbox &>/dev/null &
sleep 2
killall -9 fluxbox
echo "session.screen0.workspaces:1" > /root/.fluxbox/init

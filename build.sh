apt-get update
apt-get -y install xvfb x11vnc x11-apps net-tools git ca-certificates python
git clone http://github.com/novnc/noVNC.git
mv vnc-redirect.html noVNC/

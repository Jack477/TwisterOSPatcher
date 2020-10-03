#!/bin/bash
echo 'Installing Twister OS Patcher by FlameKat53, Jack47, and MobileGamesMotionYT...'

problem=$(dpkg -s python3-tk|grep installed)
path=$(pwd)
echo $path
echo Checking for tkinter: $problem
if [ "" == "$problem" ]; then
	sudo apt-get install python3-tk
fi
sudo apt install -y python3-pil python3-pil.imagetk python3-wget
sudo python3 c_desktop.py $USER
sudo chmod +x ${path}/src/start.sh
sudo chmod +x ${HOME}/Desktop/patcher.desktop
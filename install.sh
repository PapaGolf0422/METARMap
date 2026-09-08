#must be run as sudo!

apt-get update
apt-get upgrade -y
apt-get install python3 -y
apt-get install python3-pip -y
apt-get install i2c-tools -y
apt-get install fonts-dejavu -y
apt-get install libjpeg-dev -y
apt-get install zlib1g-dev -y
apt-get install libfreetype6-dev -y
apt-get install liblcms2-dev -y
apt-get install libopenjp2-7 -y
apt-get install libtiff6 -y
pip3 config set global.break-system-packages true
pip3 install rpi_ws281x
pip3 install adafruit-circuitpython-neopixel
pip3 install adafruit-circuitpython-ssd1306
pip3 install pillow
pip3 install astral
\cp metar.py /home/pi
\cp pixelsoff.py /home/pi
\cp airports /home/pi
\cp displayairports /home/pi
\cp refresh.sh /home/pi
\cp lightsoff.sh /home/pi
\cp crontab /etc/crontab
chmod +x updategit.sh
cd /home/pi
chmod +x refresh.sh
chmod +x lightsoff.sh
chmod +r airports
chmod +r displayairports
chmod +r metar.py
chmod +r pixelsoff.py

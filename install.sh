//must be run as sudo!

apt-get update
apt-get upgrade -y
apt-get install python3 python3-pip i2c-tools fonts-dejavu libjpeg-dev zlib1g-dev libfreetype6-dev liblcms1-dev libopenjp2-7 libtiff5 -y
pip3 install rpi_ws281x adafruit-circuitpython-neopixel adafruit-circuitpython-ssd1306 pillow astral -y
cp metar.py /home/pi
cp pixelsoff.py /home/pi
cp airports /home/pi
cp displayairports /home/pi
cp refresh.sh /home/pi
cp lightsoff.sh /home/pi
\cp crontab /etc/crontab
cd /home/pi
chmod +x refresh.sh
chmod +x lightsoff.sh
chmod +r airports
chmod +r displayairports
chmod +r metar.py
chmod +r pixelsoff.py

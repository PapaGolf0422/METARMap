cd /home/pi/metarmap
git pull
\cp metar.py /home/pi
\cp displaymetar.py /home/pi
\cp pixelsoff.py /home/pi
\cp airports /home/pi
\cp displayairports /home/pi
\cp refresh.sh /home/pi
\cp lightsoff.sh /home/pi
\cp crontab /etc/crontab
cd /home/pi
chmod +x refresh.sh
chmod +x lightsoff.sh
chmod +r airports
chmod +r displayairports
chmod +r metar.py
chmod +r displaymetar.py
chmod +r pixelsoff.py

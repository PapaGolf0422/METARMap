#!/bin/bash
set -e

cd /home/pi/metarmap
/usr/bin/git pull

\cp metar.py /home/pi/
\cp displaymetar.py /home/pi/
\cp pixelsoff.py /home/pi/
\cp airports /home/pi/
\cp displayairports /home/pi/
\cp refresh.sh /home/pi/
\cp lightsoff.sh /home/pi/

cd /home/pi
/bin/chmod +x refresh.sh
/bin/chmod +x lightsoff.sh
/bin/chmod +r airports displayairports metar.py displaymetar.py pixelsoff.py

echo "Repository updated successfully."

#!/bin/bash
# Must be run as sudo!
set -e

echo "=== Updating System Packages ==="
apt-get update
apt-get upgrade -y

echo "=== Installing System Dependencies ==="
apt-get install -y \
  python3 \
  python3-pip \
  python3-venv \
  python3-dev \
  i2c-tools \
  fonts-dejavu \
  libjpeg-dev \
  zlib1g-dev \
  libfreetype6-dev \
  liblcms2-dev \
  libopenjp2-7

echo "=== Setting Up Python Virtual Environment ==="
# Create venv with access to system site-packages for GPIO/I2C hardware drivers
python3 -m venv --system-site-packages /home/pi/metar-env

echo "=== Installing Python Libraries inside VENV ==="
/home/pi/metar-env/bin/pip install --upgrade pip
/home/pi/metar-env/bin/pip install \
  rpi_ws281x \
  adafruit-circuitpython-neopixel \
  adafruit-circuitpython-ssd1306 \
  pillow \
  astral \
  luma.oled \
  smbus2 \
  tzdata

echo "=== Enabling Permissions & Executables ==="
chmod +x updategit.sh
./updategit.sh

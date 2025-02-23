#!/bin/bash

set -e -x

echo "[Unit]
Description=Conifgure the LED matrix displays on the Framework Laptop 16
[Service]
Type=oneshot
ExecStart=${HOME}/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM1 led-matrix --string \""${1}"\"
ExecStart=${HOME}/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM0 led-matrix --string \""${2}"\"
# Configure maximum brightness for bright rooms.
ExecStart=${HOME}/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM1 led-matrix --brightness 200
ExecStart=${HOME}/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM0 led-matrix --brightness 200
[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/framework-led-matrix.service
echo "[Unit]
Description=Turn on LEDs every 10 seconds

[Timer]
OnBootSec=10
OnUnitActiveSec=10

[Install]
WantedBy=timers.target" | sudo tee /etc/systemd/system/framework-led-matrix.timer
sudo systemctl daemon-reload
sudo systemctl enable --now framework-led-matrix.timer

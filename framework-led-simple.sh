#!/bin/bash

while true;
    do \
    sudo "${HOME}"/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM1 led-matrix --string "${1}"
    sudo "${HOME}"/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM0 led-matrix --string "${2}"
    # Configure maximum brightness for bright rooms.
    sudo "${HOME}"/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM1 led-matrix --brightness 200
    sudo "${HOME}"/.local/bin/inputmodule-control_cli_linux --serial-dev /dev/ttyACM0 led-matrix --brightness 200
    sleep 10s
done

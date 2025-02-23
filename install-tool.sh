#!/bin/bash

set -e -x

if [ ! -f "${HOME}"/.local/bin/inputmodule-control_cli_linux ]; then
    mkdir -p "${HOME}"/.local/bin/
    curl --location --remote-name 'https://github.com/FrameworkComputer/inputmodule-rs/releases/download/v0.2.0/inputmodule-control_cli_linux' --output-dir "${HOME}"/.local/bin/
    chmod +x "${HOME}"/.local/bin/inputmodule-control_cli_linux
    ~/.local/bin/inputmodule-control_cli_linux --list
fi

#!/bin/bash

VENV="fmchallenge"
CONFIG="conf-dev.py"
PORT="8001"
VENV_DIR="${WORKON_HOME:-$HOME/.virtualenvs}/$VENV"

if [ -d "$VENV_DIR" ]; then
    NIKOLA="$VENV_DIR/bin/nikola"
else
    NIKOLA=nikola
fi

nikola build "--conf=$CONFIG"

if [ $? -eq 0 -a "x$1" = "x-f" ]; then
   nikola deploy "--conf=$CONFIG"
fi

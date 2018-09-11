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

$NIKOLA auto --conf="$CONFIG" -p $PORT -b "$@"

#!/bin/bash

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

VENV="fmchallenge"
PROJECT_DIR="$HOME/work/sites/fmchallenge.osamc.de"
HTDOCS_DIR="$HOME/htdocs"
CONFIG="conf-prod.py"

pyenv activate "$VENV"
cd "$PROJECT_DIR" && \
git pull && \
nikola build "--conf=$CONFIG"

if [ $? -eq 0 -a "x$1" = "x-f" ]; then
   rsync -rltDv --update --checksum "$PROJECT_DIR/output/"* "$HTDOCS_DIR"
fi

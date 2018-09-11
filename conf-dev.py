# -*- coding: utf-8 -*-

from __future__ import unicode_literals

from io import open

exec(open('conf.py', encoding='utf-8').read())

DEPLOY_DRAFTS = True
SITE_URL = "https://fmchallenge.osamc.de:4443/"
DEPLOY_COMMANDS = {
    'default': [
        "rsync -rltDv --update --checksum output/ "
        "chrisarndt.de:/home/www/fmchallenge.osamc.de/dev",
    ]
}

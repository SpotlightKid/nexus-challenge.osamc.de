# -*- coding: utf-8 -*-

from __future__ import unicode_literals

exec(compile(open('conf.py').read(), 'conf.py', 'exec'))

DEPLOY_DRAFTS = True
SITE_URL = "https://fmchallenge.osamc.de/"
DEPLOY_COMMANDS = {
    'default': [
        "rsync -rltDv --update --checksum --delete output/* "
        "chrisarndt.de:/home/www/fmchallenge.osamc.de/htdocs",
    ]
}

# -*- coding: utf-8 -*-

from __future__ import unicode_literals

exec(compile(open('conf.py').read(), 'conf.py', 'exec'))

DEPLOY_DRAFTS = True
SITE_URL = "https://nexus-challenge.osamc.de/"
DEPLOY_COMMANDS = {
    'default': [
        "rsync -rltDv --update --checksum --delete output/* "
        "--exclude 'output/downloads/Open Source Music Nexus Challenge 2019.zip' "
        "chris@chrisarndt.de:/home/www/nexus-challenge.osamc.de/htdocs",
    ]
}

#!/usr/bin/env python
# from .prepare import DUMP_SOURCES, DUMP_URL_TEMPLATE
import prepare
import os
import time
import urllib2


for name, source in prepare.DUMP_SOURCES.items():
    type, value = source.split(':')
    if type == 'url':
        url = prepare.DUMP_URL_TEMPLATE + value
        try:
            u = prepare.custom_urlopen(url)
            status = u.info().getheader('Last-Modified')
        except urllib2.HTTPError as e:
            status = 'ERROR "%s" for url: %s' % (e, url)
        print "%s: %s" % (name, status)
    if type == 'dropbox':
        filepath = prepare.DROPBOX_PATH + value
        print "%s: %s" % (name, time.ctime(os.path.getmtime(filepath)))


#!/usr/bin/env python
import urllib2
import re
import sys


def fetch_board(liga, group, phase, match, board):
    url = 'https://www.pzbs.pl/wyniki/liga/liga2019-20/%s/%s/%s%s%sb-%s.html' % (liga, group, group, phase, match, board)
    req = urllib2.Request(url, headers={'User-Agent': "Magic Browser"})
    con = urllib2.urlopen(req)
    html = con.read()
    mm = re.search('<img src="images/S.gif">&nbsp;([^<]+)', html)
    hand = mm.group(1) if mm else '--- ' + url
    print "%s-%s %s-%s: %s" % (liga, group, match, board, hand)


m = sys.argv[1]
b = sys.argv[2]
fetch_board('1liga', 'n', 'rr', m, b)
fetch_board('1liga', 's', 'rr', m, b)
fetch_board('2liga', 'nw', 'rr', m, b)
fetch_board('2liga', 'ne', 'rr', m, b)
fetch_board('2liga', 'sw', 'rr', m, b)
fetch_board('2liga', 'se', 'rr', m, b)



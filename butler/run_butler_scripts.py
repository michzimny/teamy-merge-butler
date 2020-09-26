#!/usr/bin/env python
from sys import exit
from subprocess import Popen, PIPE

def main():
    run_sql('1ligaButler--run.sql')
    run_sql('2ligaButler--run.sql')
    run_sql('0ligaButler--run.sql')


def run_sql(filename):
    print 'running ' + filename
    p = Popen(['mysql', '-h127.0.0.1', '-uroot', '-proot'], stdin=PIPE)
    with open(filename, 'r') as f: p.communicate(f.read())
    if p.returncode != 0:
        print 'ERR %d' % p.returncode
        exit(1)


if __name__ == '__main__':
    main()


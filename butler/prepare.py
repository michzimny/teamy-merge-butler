#!/usr/bin/env python
from sys import exit
from urllib2 import urlopen, Request
from subprocess import Popen, PIPE
from shutil import copyfile
import os.path
import time
import subprocess


# the options are: url, dropbox, mysql, s3
DUMP_SOURCES = {
    'eklasa': 's3:eliga1920.sql',
    '1nrr': 'mysql:pzbspls4_liga1n',
    '1srr': 's3:dmp1s_rr.sql',
    '2nwrr': 's3:19nwrr.sql',
    '2nerr': 's3:nerr.sql',
    '2swrr': 'mysql:pzbspls4_liga2sw',
    '2serr': 's3:serr.sql',
}


S3_BUCKET_URL = 's3://pzbs-liga-dumps/'
DUMP_URL_TEMPLATE = 'http://www.pzbs.pl/wyniki/liga/liga2019-20/'
DROPBOX_PATH = 'C:\\Users\\Michzimny\\Dropbox\\Liga\\'
MYSQLDUMP_PATH = 'mysqldump'


def custom_urlopen(url):
    request = Request(url)
    request.add_header('User-Agent', 'michzimny86429873642983746')
    return urlopen(request)


def parse_sql(name):
    print "parsing " + name
    filename = name + '.sql'
    with open(filename,'r') as f:
        lines = f.readlines()
    with open(filename,'w') as f:
        for line in lines:
            normalized_line = line.strip().upper()
            if normalized_line.startswith('CREATE DATABASE ') or normalized_line.startswith('USE '):
                print '>> ' + line.strip()
            else:
                f.write(line)


def save_sql_from_ftp(name, filename):
    output_file = name + '.sql'
    url = DUMP_URL_TEMPLATE + filename
    u = custom_urlopen(url)
    print "downloading %s: %s" % (name, u.info().getheader("Last-Modified"))
    print url
    with open(output_file, 'w') as f:
        f.write(u.read())


def save_sql_from_s3(name, filename):
    output_file = name + '.sql'
    url = S3_BUCKET_URL + filename
    command = "aws --profile pzbs-liga s3 cp %s %s" % (url, output_file)
    print "calling: %s" % command
    subprocess.check_call(command, shell=True)


def restore_db(name):
    print 'restoring ' + name
    filename = name + '.sql'
    p = Popen(['mysql', '-h127.0.0.1', '-uroot', '-proot', name], stdin=PIPE)
    with open(filename, 'r') as f: p.communicate(f.read())
    if p.returncode != 0:
        print 'ERR %d' % p.returncode
        exit(1)


def import_remote_db(name, db_name):
    print 'importing ' + name + ' from mysql ' + db_name
    filename = name + '.sql'
    p = Popen([MYSQLDUMP_PATH, '-hmysql55.zenbox.pl', '-upzbspls4_mz', '-pHASLO', db_name], stdout=PIPE)
    out, err = p.communicate()
    with open(filename, 'w') as f:
        f.write(out)


def save_sql_from_dropbox(name, filename):
    print "copying from Dropbox: " + name
    filepath = DROPBOX_PATH + filename
    print "last modified: %s" % time.ctime(os.path.getmtime(filepath))
    copyfile(filepath, name + '.sql')


def main():
    for name, source in DUMP_SOURCES.items():
        type, value = source.split(':')
        print ""
        print "saving %s from %s (%s)" % (name, type, value)
        
        if type == 'url':
            save_sql_from_ftp(name, value)
        elif type == 'dropbox':
            save_sql_from_dropbox(name, value)
        elif type == 'mysql':
            import_remote_db(name, value)
        elif type == 's3':
            save_sql_from_s3(name, value)
        else:
            raise ValueError("unknown source type of %s: %s" % (name, type))

        parse_sql(name)
        restore_db(name)


if __name__ == '__main__':
    main()


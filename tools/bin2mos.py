#!/usr/bin/python3
import sys

if (len(sys.argv) != 2):
    print ('Usage: bin2mos.py <BinFileName>')
else:
    filename = str(sys.argv[1])
    print ('1000\0')
    print ('!\0')

    bytes_read = open(filename, 'rb').read()
    for b in bytes_read:
        print ('%02X' % ord(b))

    print ('@\0')
    print ('1000\0')
    print ('g\r\n')














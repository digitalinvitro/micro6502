#!/usr/bin/python3
import sys
import argparse
import logging
import serial
import platform
import time

version = "Ver 0.11"

class FileLoader:
    def __init__(self):
        self.size = 0

    def load_file(self, f):
        bytes_read = open(f, 'rb').read()
        self.size = len(bytes_read)
        return bytes_read

class UartWriter:
    def __init__(self, uartport):
        self.portname = uartport
        self.uartport = serial.Serial(
            port = uartport,
            baudrate = 115200,
            parity = serial.PARITY_NONE,
            stopbits = serial.STOPBITS_ONE,
            bytesize  =serial.EIGHTBITS,
            timeout = 5)

        logging.info('Port in use:' + self.uartport.name)
        self.uartport.isOpen()

    def write_byte(self, b):
        self.uartport.write(b)
        
    def write_string(self, s):
        self.uartport.write(s.encode())

if __name__ == '__main__':
    print ('Micro6502 data loader (py3). %s' % version)
    print ('Platform: ' + platform.system() + ' ' + platform.release())
    
    parser = argparse.ArgumentParser()
    optional = parser._action_groups.pop()
    required = parser.add_argument_group('required arguments')

    optional.add_argument('-v', '--verbose',
                        help = 'increase output verbosity',
                        action = 'store_true')

    required.add_argument('-u', '--uartport', type = str, dest = 'uartport', required = True,
                        help = 'UART port device')

    required.add_argument('-b', '--bootloader', type = str, dest = 'bootload', required = True,
                        help = 'bin file with a booloader')

    required.add_argument('-p', '--program', type = str, dest = 'program', required = True,
                        help = 'bin file with a program')

    required.add_argument('-d', '--delay', type = int, dest = 'delay_ms', required = True,
                        help = 'delay in ms between program bytes')

    parser._action_groups.append(optional)
    args = parser.parse_args()

    if args.verbose:
        logging.basicConfig(level = logging.INFO)
    else:
        logging.basicConfig(level = logging.ERROR)

    logging.info('UART port:' + args.uartport)
    logging.info('Bootloader:' + args.bootload)
    logging.info('Program:' + args.program)
    logging.info('Delay, ms:' + str(args.delay_ms))

    filer = FileLoader()
    ser = UartWriter(args.uartport)

    # Process bootloader file
    bootbytes = filer.load_file(args.bootload)
    logging.info('Bootloader bytes loaded:' + str(filer.size))
    counter = 0
    for b in bootbytes:
        logging.info('Byte %d: %02X to UART (BIN)' % (counter, b))
        counter += 1
        ser.write_byte(b)

    # Process program file
    progbytes = filer.load_file(args.program)
    logging.info('Program bytes loaded:' + str(filer.size))
    counter = 0
    time.sleep(0.2)
    delay = args.delay_ms/1000.0
    ser.write_string('1000\0')
    time.sleep(delay)
    ser.write_string('!\0')
    time.sleep(delay)

    for b in progbytes:
        hexbyte_str = '%02X' % b
        logging.info('Byte %d: %s to UART (HEX)' % (counter, hexbyte_str))
        counter += 1
        ser.write_string(hexbyte_str)
        time.sleep(delay)

    ser.write_string('@\0')
    time.sleep(delay)
    ser.write_string('1000\0')
    ser.write_string('g\r\n')

    print ('Done')

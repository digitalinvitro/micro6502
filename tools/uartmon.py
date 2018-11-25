#!/usr/bin/python3
import serial

uartname = '/dev/ttyUSB0'

port = serial.Serial(uartname, baudrate = 115200, timeout = 5.0)
print('Listening to:' + uartname);

while True:
    rcv = port.read()
    print('\rReceived:' + repr(rcv))



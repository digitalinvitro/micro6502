import serial

port = serial.Serial("/dev/ttyUSB0", baudrate=115200, timeout=5.0)
print("Listening to /dev/ttyUSB0");

while True:
    rcv = port.read()
    print('\rReceived:' + repr(rcv))



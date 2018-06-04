# micro6502

6502 cpu based micro module (for mcu applications)

![3D view](https://github.com/digitalinvitro/micro6502/raw/master/pic/micro65-3D.jpg)

Hardware

- CPU mos6502 - 1MHz
- 16 IO port in zero-page low address (0x0000...0x000F)
- 64K SRAM
- UART RX/TX
- load 256-byte MONITOR to SRAM from UART (terminal) on power on
- 16-bit address bus, 8-bit data bus, control bus and 16 IO pin to pinheaders connected
- option spi/i2c/SN74HC595/dendy joystik(HEF4021B) interfaces HDL programmed in CPLD

Программное обеспечение:
* Ассемблер - naken asm http://www.mikekohn.net/micro/naken_asm.php
* МОНИТОР   - программное обеспечение для начальной загрузки модуля по включению питания. Загружается с адреса 0xFF00, после загрузки 256 байт кода, на процессор подается питание с последюущим сбросом по лининии reset. 
* ОТЛАДЧИК  - программное обеспечение для отладки загружаемого кода, интерфейс строчный. Загружается с адреса 0x1000.
 
<img src="https://github.com/digitalinvitro/micro6502/raw/master/pic/real.jpg" width="600" height="350"/>

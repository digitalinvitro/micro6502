# micro6502
6502 cpu based micro module (for mcu applications)

![3D view](https://github.com/digitalinvitro/micro6502/raw/master/micro65-3D.jpg)

Hardware

- CPU mos6502 - 1MHz
- 64K SRAM
- UART RX/TX
- load 256-byte MONITOR to SRAM from UART (terminal) on power on
- 16-bit address bus, 8-bit data bus, control bus and 16 IO pin to pinheaders connected
- option spi, i2c, SN74HC595, dendy joystik interfaces programmed in CPLD

Программное обеспечение:

* МОНИТОР - программное обеспечение для начальной загрузки модуля по включению питания. Загружается с адреса 0xFF00, после загрузки 256 байт кода, на процессор пожается питание с последюущим сбросом лининей reset. 
  
  МОНИОТР обеспечивает два режиам работы 
  а) выдачу 256-байтного дампа 
     Данный режим включается сразу после загрузки монитора с UART. В данном режиме с терминала вводится стартовый адрес и команда '@' для выдачи дампа в терминал. Стартовый адрес вводятся в шестнадцатеричном представлении.
<div style=” line-height:0.2;”><tt>
<p>-->FF00</p>
<p>-->@</p>
<p>D8 A2 00 86 39 A9 47 8D 45 FF A9 FF 8D 46 FF A0</p>
<p>08 5D 00 FF 4A 90 02 49 31 88 D0 F8 E8 D0 F0 A2</p>
<p>00 9A 20 DF FF 8E F3 FF A0 3C 84 38 A0 EE A9 FF</p>
<p>20 CE FF BA A5 08 10 FC 29 7F 20 DF FF 95 10 E8</p>
<p>C9 0D D0 F0 4C 47 FF CA E0 01 F0 16 20 A1 FF AD</p>
<p>F3 FF F0 D8 BA A5 3F 81 3C E6 3C D0 CF E6 3D 4C</p>
<p>2C FF A5 10 C9 67 D0 03 6C 3C 00 C9 21 D0 07 8D</p>
<p>F3 FF A0 3E 84 38 C9 40 D0 B2 AC F3 FF D0 A0 98</p>
<p>A2 20 29 0F D0 02 A2 0D 8A 20 DF FF B1 3C 4A 4A</p>
<p>4A 4A 20 C1 FF B1 3C 29 0F 20 C1 FF C8 D0 E0 F0</p>
<p>8B 18 A9 C0 75 10 30 02 69 F8 29 0F 48 8A 4A 49</p>
<p>01 A8 68 B0 06 0A 0A 0A 0A 11 38 91 38 CA 10 E1</p>
<p>60 18 69 30 C9 3A 90 02 69 06 20 DF FF 60 85 3B</p>
<p>84 3A A0 FF 20 E7 FF C8 B1 3A 85 08 D0 F6 60 20</p>
<p>E7 FF 20 E7 FF 85 08 48 A5 02 30 FC 68 60 0D 0A</p>
<p>2D 2D 3E 00 00 00 00 00 00 00 00 00 00 FF AA 55</p>
<p>--></p>
</div>
  б) запись байта по указателю
       <p>Вход в режим - ввод символа '!' и <ВК>. В данном режиме по ранее введенному стартовому адресу производится запись вводимого следом байта и адрес увеличивается на единицу. Признак режима символ '!' в строке ввода. Завершение режима ввода данных в память - ввод символа '@'. Байт данных для записи вводится в шестнадцатеричном представлении.</p>
<tt>-->2000</tt>

<tt>-->!</tt>

<tt>-->!20</tt>

<tt>-->!25</tt>

<tt>-->!F9</tt>

<tt>-->!@</tt>

<tt>--></tt>

/* <img src="https://github.com/digitalinvitro/micro6502/raw/master/micro65-3D.jpg" width="4" height="5"/> */

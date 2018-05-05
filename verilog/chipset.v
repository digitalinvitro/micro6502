`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:47 12/18/2017 
// Design Name: 
// Module Name:    chipset 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module chipset(
	input		 clk,
	input 	 reset,
	input		 RXpin,
	output	 TXpin,
	input     Phi2,
	input     WR,
	output	 RD,
	inout     WE,
	output    CS,
	output    CPUCLK,
	inout  	 ON,
	output    RCK,
	output    SCL,
	output	 SDA,
	output	 reg P0 = 1'b0,
	input		 SW,
	inout     [7:0]BUSAL,
	input     [7:0]BUSAH,
	inout     [7:0]DBUS
);

reg  [8:0]CNT = 0;
reg  [1:0]DIV = 0;
wire BOOT;

wire [7:0]RXdata;
wire RES = !reset;
wire BUSY;
wire RDY;
reg  RDY_pulse = 1'b0;
// 0 - 20, 1 - 10, 2 - 5, 3 - 2,5, 4 - 1,25, 5 - 0,625
assign CPUCLK = DIV[1];                                   // 1,024 MHz

wire [15:0]BUSA;
assign BUSA[15:8] = BUSAH[7:0];
// boot = 1 -> E=0 -> hiz
// boot = 0 & cnt = 0 -> E=1 -> low
// boot = 0 & cnt = 1 -> E=0 -> hiz
// E = !(boot | cnt)
IOBUFE IOBUFE_A0(.O(BUSA[0]), .IO(BUSAL[0]), .I(1'b0), .E(!(BOOT | CNT[0])));
IOBUFE IOBUFE_A1(.O(BUSA[1]), .IO(BUSAL[1]), .I(1'b0), .E(!(BOOT | CNT[1])));
IOBUFE IOBUFE_A2(.O(BUSA[2]), .IO(BUSAL[2]), .I(1'b0), .E(!(BOOT | CNT[2])));
IOBUFE IOBUFE_A3(.O(BUSA[3]), .IO(BUSAL[3]), .I(1'b0), .E(!(BOOT | CNT[3])));
IOBUFE IOBUFE_A4(.O(BUSA[4]), .IO(BUSAL[4]), .I(1'b0), .E(!(BOOT | CNT[4])));
IOBUFE IOBUFE_A5(.O(BUSA[5]), .IO(BUSAL[5]), .I(1'b0), .E(!(BOOT | CNT[5])));
IOBUFE IOBUFE_A6(.O(BUSA[6]), .IO(BUSAL[6]), .I(1'b0), .E(!(BOOT | CNT[6])));
IOBUFE IOBUFE_A7(.O(BUSA[7]), .IO(BUSAL[7]), .I(1'b0), .E(!(BOOT | CNT[7])));

// RAM     -  FF00 - FFFF - bootcode
// PORT    -  0000 - 000F
// PAGEMEM -  8000 - 8FFF - external pages - 4K size
// UART_WR -  >> 0008 (transmit)
// RXX     -  << 0008 (rescive)
// UART_RD -  << 0002 (get BUSY)
// PA_WR   -  >> 0002 (SDA write)
// DIRA_WR -  >> 0004 (DIR SDA write)
//====================================================
// PA_RD	  -  << 0001 and << 0000 (SDA read)
// SCL_CS  -  >> 0001 and >> 0000
wire PORT_CS  = !(|BUSA[15:4]) & BOOT & Phi2;
//wire PAGE_CS  = (BUSA[15:12] == 4'b1000) & BOOT & Phi2;
wire RXX      =  WR & PORT_CS & BUSA[3];
wire UART_WR  = !WR & PORT_CS & BUSA[3];
wire UART_RD  =  WR & PORT_CS & BUSA[1];
wire SI_WR    = !WR & PORT_CS & BUSA[1];
wire ST_WR    = !WR & PORT_CS & BUSA[2];
wire SW_RD	  =  WR & PORT_CS & BUSA[2];
wire P0_WR    = !WR & PORT_CS & BUSA[0];
//wire SCL_CS   = !(|BUSA[15:1]) & BOOT & Phi2;

assign CS  = PORT_CS;// | PAGE_CS; 
assign RD  = (!BOOT);                                // RAM.OE <- RD

wire [7:0]DATA;

assign RCK = ST_WR;
assign SDA = DATA[0];
assign SCL = SI_WR;  

always@(negedge CPUCLK or posedge RES) begin
	if(RES)
	   P0 <= 1'b0;
	else
		if(P0_WR) P0 <= DATA[0];
end
// BOOT UART_RD RXData BUSY  E
//   0     0     0      0    1    0 -> dbus
//   0     0     0      1    1    0 -> dbus
//   0     0     1      0    0    Z -> dbus  (1)
//   0     0     1      1    0    Z -> dbus  (1)
//   0     1     0      0    1    0 -> dbus    
//   0     1     0      1    1    0 -> dbus    
//   0     1     1      0    0    Z -> dbus  (1)    
//   0     1     1      1    0    Z -> dbus  (1)
//   1     0     0      0    0    Z -> dbus  input
//   1     0     0      1    0    Z -> dbus  input
//   1     0     1      0    0    Z -> dbus  input
//   1     0     1      1    0    Z -> dbus  input
//   1     1     0      0    1    0 -> dbus  
//   1     1     0      1    0    Z -> dbus  (1)
//   1     1     1      0    1    0 -> dbus  
//   1     1     1      1    0    Z -> dbus  (1)
// BOOT   RXD RXData  E
//   0     0     0    1    0 -> dbus
//   0     0     1    0    Z -> dbus
//   0     1     0    1    0 -> dbus  
//   0     1     1    0    Z -> dbus  (1)
//   1     0     0    0    Z -> dbus
//   1     0     1    0    Z -> dbus
//   1     1     0    1    0 -> dbus  
//   1     1     1    0    Z -> dbus  (1)
wire EN_D0 = (!BOOT & !RXdata[0]) | (RXX & !RXdata[0]);
wire EN_D1 = (!BOOT & !RXdata[1]) | (RXX & !RXdata[1]);
wire EN_D2 = (!BOOT & !RXdata[2]) | (RXX & !RXdata[2]);
wire EN_D3 = (!BOOT & !RXdata[3]) | (RXX & !RXdata[3]);
wire EN_D4 = (!BOOT & !RXdata[4]) | (RXX & !RXdata[4]);
wire EN_D5 = (!BOOT & !RXdata[5]) | (RXX & !RXdata[5]);
wire EN_D6 = (!BOOT & !RXdata[6]) | (RXX & !RXdata[6]);
wire EN_D7 = (!BOOT & !RXdata[7]) | (BOOT & ( (UART_RD & !BUSY) | (RXX & !RDY_pulse) | (SW_RD & !SW) ));
IOBUFE IOBUFE_D0(.O(DATA[0]), .IO(DBUS[0]), .I(1'b0), .E(EN_D0));
IOBUFE IOBUFE_D1(.O(DATA[1]), .IO(DBUS[1]), .I(1'b0), .E(EN_D1));
IOBUFE IOBUFE_D2(.O(DATA[2]), .IO(DBUS[2]), .I(1'b0), .E(EN_D2));
IOBUFE IOBUFE_D3(.O(DATA[3]), .IO(DBUS[3]), .I(1'b0), .E(EN_D3));
IOBUFE IOBUFE_D4(.O(DATA[4]), .IO(DBUS[4]), .I(1'b0), .E(EN_D4));
IOBUFE IOBUFE_D5(.O(DATA[5]), .IO(DBUS[5]), .I(1'b0), .E(EN_D5));
IOBUFE IOBUFE_D6(.O(DATA[6]), .IO(DBUS[6]), .I(1'b0), .E(EN_D6));
IOBUFE IOBUFE_D7(.O(DATA[7]), .IO(DBUS[7]), .I(1'b0), .E(EN_D7));

/* Memory 0010 - FFF0 */
wire MEMWR = !WR & Phi2;
OBUFT OBUFT_WE(.O(WE), .I(1'b0), .T(((BOOT)? !MEMWR : !RDY)));

always@(posedge clk) begin       // 40 MHz
  DIV <= DIV + 1'b1;
end

OBUFT OBUFT_PON(.O(ON), .I(1'b0), .T(!BOOT));
assign BOOT = CNT[8];
//assign IRQ = |CNT[7:4];

always@(negedge CPUCLK or posedge RES) begin
	if(RES)
		RDY_pulse <= 1'b0;
	else
		if(BOOT) RDY_pulse <= (RDY_pulse)? !RXX : RDY;
end

wire CNT_Clock = (BOOT)? CPUCLK : RDY; 
wire [8:0]CNT_ADD = CNT[7:0] + 1'b1;
always@(negedge CNT_Clock or posedge RES) begin
  if(RES) CNT <= 0; else 
  begin 
    CNT[7:0] <= CNT_ADD[7:0];
	 if(!CNT[8]) CNT[8] <= CNT_ADD[8];
  end
end

serial_rx rs232rx(.reset(RES), .clk(CPUCLK), .rx(RXpin), .rxbyte(RXdata), .ready(RDY));
serial_tx rs232tx(.reset(RES), .clk(!CPUCLK), .sbyte(DATA), .send(UART_WR), .tx(TXpin), .busy(BUSY));
endmodule

// последовательный приемник
// 38400бит/сек
// 8бит, без четности
//скорость приема и передачи определяется этой константой
// 10'000'000/115200 = 86,80555555555556 ~ 87 (7bit)
// 3'125'000/115200 = 27,12673611111111 ~ 27 (5bit)     
//  2'500'000/115200 = 21,70138888888889 ~ 22 (5bit)  DIV[3]
//  1'250'000/115200 = 10,85
//  1'250'000/57600 = 21,70138888888889 ~ 27
//  1'024'000/115200 = 8.8(8)
module serial_rx(
    input reset,
    input clk,
    input rx,
    output [7:0]rxbyte,
    output ready
);
parameter RCONST =  8; //10; //21; //86; //109; //325; 

reg [8:0]shift_reg = 0;     //сдвиговый регистр приемника
reg [3:0]cnt = 0;           //счетчик предделитель битрейта
reg RDY = 1'b1;

wire RXMx = (RDY)? rx : shift_reg[0];
wire RSTT = ({RDY, RXMx} == 2'b11)? 1'b1 : 1'b0;
wire recv_edge = (cnt == (RCONST/2) - 1);
wire recv_time = (cnt == RCONST);

assign rxbyte = shift_reg[7:0];
assign ready = RSTT & recv_edge;

always@(posedge recv_edge or posedge reset) begin
    if(reset) 
        RDY <= 1'b1;
	 else
		  RDY <= RXMx;
end

always@(posedge recv_edge) begin
    if(RDY)
        shift_reg <= 9'b1_0000_0000;
	 else
		  shift_reg[8:0] <= {rx|RDY, shift_reg[8:1]};
end

always@(posedge clk or posedge reset) begin
    if(reset)
        cnt <= 0;
	 else
		  cnt <= (recv_time | RSTT)? 0 : cnt + 1'b1;   //счетчик длительности принимаемого бита
end
endmodule

// последовательный передатчик UART
// 115200 бод - 3125000/115200 = 27,12673611111111 ~ 27 (5bit)      DIV[3]
// 8бит, без четности
// 12'500'000/115200 = 108,5069444444444 ~ 109 (7bit)
// 20'000'000/115200 = 173,6111111111111 ~ 174 (8bit)
// 10'000'000/115200 = 86,80555555555556 ~ 87 (7bit)
//  5'000'000/115200 = 43,40277777777778 ~ 43 (6bit)
//  2'500'000/115200 = 21,70138888888889 ~ 22 (5bit)
//  1'250'000/115200 = 10,85
//  1'024'000/115200 = 8,8(8)
//  1'024'000/57600 = 17,7(7)
module serial_tx(
    input reset, 
    input clk,
    input [7:0]sbyte,
    input send,
    output tx,
    output busy
    );

parameter RCONST = 8; //10; //21; //27; 

//передатчик
reg [9:0]send_reg = 10'b1_11111111_1;
reg [3:0]send_cnt = 0;

wire send_time = (send_cnt == RCONST);

assign tx = send_reg[0];
wire   [7:0]equ  = {8{send_reg[9]}} ^ send_reg[8:1];
wire   bsy = !(|equ);
assign busy = |equ;

always@(posedge clk or posedge reset) begin
	if(reset)
	  send_cnt <= 0;
	else
     send_cnt <= (send_time | send)? 0 : send_cnt + 1'b1; 
end

always@(posedge clk or posedge reset)
begin
  if(reset)
    send_reg[9:0] <= 10'b1_11111111_1; 
  else begin
  //передача начинается по сигналу send
	  if(send | send_time) begin 
	    send_reg[8:1] <= (send)? sbyte : send_reg[9:2];
		 send_reg[0] <= (send)? 1'b0 : send_reg[1]|bsy;
	  end
	  if(send) begin
	   send_reg[9] <= !sbyte[7];
	  end
  end
end
endmodule 
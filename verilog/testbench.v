`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:22 01/16/2018
// Design Name:   chipset
// Module Name:   C:/Users/SAA.KARTALY/Dropbox/HDL/z80cpld/testbench.v
// Project Name:  z80cpld
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: chipset
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg  phi2;
	reg reset;
	reg RXpin;
	reg real_tx_time;
	reg WR;
//	reg MREQ;

	// Outputs
	wire TXpin;
	wire CS;
	wire CPUCLK;
	wire [7:0] LED;
	wire RD;

	// Bidirs
	tri [7:0] BUSA;
	tri [7:0] DBUS;
	tri [7:0] DATA, BUSL;
	tri RST;
	tri WE;

	// Instantiate the Unit Under Test (UUT)
	chipset uut (
		.clk(clk), 
		.Phi2(phi2),
		.reset(reset), 
		.RXpin(RXpin), 
		.TXpin(TXpin), 
//		.MREQ(MREQ), 
		.WE(WE), 
		.RD(RD), 
		.WR(WR), 
		.CS(CS), 
		.CPUCLK(CPUCLK), 
//		.RST(RST), 
//		.LED(LED), 
		.BUSAL(BUSL), 
		.BUSAH((WR)? 8'hFF : 8'd0), 
		.DBUS(DATA)
	);

	assign BUSL[7:0] = (WR)? 8'hzz : 8'd1;
	assign DATA[7:0] = (WR)? 8'hzz : 8'h01;

   assign BUSA[7:0] = BUSL;
	assign DBUS[7:0] = DATA;

	initial begin
		// Initialize clock
		clk = 0;
		phi2 = 0;
		forever #122070 clk = !clk; 
	end
	
	always@(clk) #1000 phi2 <= clk;
	
	initial begin
		// Initialize Inputs
		reset = 1;
		#10000000 reset <= 1'b0;
		// Wait 10 us for global reset to finish
		#10000000 reset <= 1'b1;
	end

	reg [7:0]boot[255:0];
// load bin to disk
/*   integer i, file_name;
	initial begin : memory_dump_out
		file_name = $fopen("microcode.hex", "w+");
			for (i=0; i<16384; i=i+1) begin
				if((i & 8'hF) == 8'hF) $fwrite(file_name, "%h\n", mcmem[i]);
				 else $fwrite(file_name, "%h ", mcmem[i]);
			end
	   $fwrite(file_name, "----------------------------");
	end
*/	
	
   integer i,j;
	initial begin
	   real_tx_time = 1;
	   i = 0;
		for(i=0;i<256;i=i+1) begin boot[i] = 8'h85 + i; /*8'h34; boot[i+1] = 8'h34; boot[i+2] = 8'h1F; boot[i+3] = 8'h1F;*/ end
//		boot[0] = 8'h85; boot[1] = 8'h01; boot[252] = 8'h00; boot[253] = 8'hFF;
		// Initialize Inputs
		RXpin = 1;
		#25000000;
		for(i=0;i<256;i=i+1) begin
       
		 real_tx_time <= 1;
       #10; real_tx_time <= 0;
		 
		 RXpin <= 0; // start bit
		 #8680000;
		 for (j=0;j<8;j=j+1) begin
		      //real_tx_time <= 1;
            //#10; real_tx_time <= 0;
				
			   RXpin <= boot[i][j];
				#8680000;
		 end
		 real_tx_time <= 1;
       #10; real_tx_time <= 0;
		 
		 RXpin <= 1; // stop bit
		 #8680000;
		 
		 real_tx_time <= 1;
       #10; real_tx_time <= 0;
		 
		 RXpin <= 1; // pause;
		 #8680000; 

		 real_tx_time <= 1;
       #10; real_tx_time <= 0;
		end
	end

	reg [7:0]SDATA;
	integer cnt;
	initial begin
		// Initialize Inputs
		WR = 1;

		for(cnt=0;cnt<27;cnt=cnt+1) #900000000;
		#498000000 WR <= 0; 
		// #499600000 WR <= 0; 
		//#499187500 WR <= 0; 
		#800000 WR <= 1; //MREQ <= 0;
	end

   assign DBUS = (RD)? 8'hzz : mem[BUSA[7:0]];
	always@(posedge CPUCLK) begin
		 
	end
   
	reg [7:0]mem[255:0];
	reg [7:0]tst=8'd0;
   always@(posedge WE) begin
	  mem[BUSA[7:0]] <= DBUS;
	  $write(DBUS," ");
	  tst <= tst + 1;
	end
     
endmodule


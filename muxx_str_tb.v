`timescale 1ns / 1ps

module muxx_str_tb;

reg i0,i1,i2,i3;
reg s0,s1;
wire y;

muxx_str uut(
 .i0(i0),
 .i1(i1),
 .i2(i2),
 .i3(i3),
 .s0(s0),
 .s1(s1),
 .y(y)
 );
 
 initial begin 
 $display("s1 s0 | i3 i2 i1 i0 | y");
 $monitor("%b %b | %b %b %b %b | %b",s1,s0,i3,i2,i1,i0,y);
 
 i0=1;
 i1=0;
 i2=1;
 i3=0;
 
 s1=0;s0=0;#2;
 s1=0;s0=1;#2;
 s1=1;s0=0;#2;
 s1=1;s0=1;#2;
 
 $finish;
 end
endmodule

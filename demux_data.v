`timescale 1ns / 1ps

module demux_data(
input d,
input s0,s1,
output y
);


assign y0 = (~s1 & ~s0 & d);
assign y1 = (~s1 & s0 & d);
assign y2 = (s1 & ~s0 & d);
assign y3 = (s1 & s0 & d);

endmodule


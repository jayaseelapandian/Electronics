`timescale 1ns / 1ps

module half_addd(
input a,b,
output s,c
);
xor (s,a,b);
and (c,a,b);
endmodule

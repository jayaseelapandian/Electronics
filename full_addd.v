`timescale 1ns / 1ps
module full_addd(
input a,b,c,
output sum,carry
);
wire t1,t2,k;
xor(k,a,b);
xor(sum,c,k);
and(t1,a,b);
and(t2,c,k);
or(carry,t2,t1);
endmodule

`timescale 1ns / 1ps

module muxx_str(
input i0,i1,i2,i3,
input s0,s1,
output y
    );
    wire w0,w1,w2,w3;
    wire s0_b,s1_b;
    
    not(s0_b,s0);
    not(s1_b,s1);
    
    and(w0,i0,s0_b,s1_b);
    and(w1,i1,s0_b,s1);
    and(w2,i2,s0,s1_b);
    and(w3,i3,s0,s1);
    
    or(y,w0,w1,w2,w3);
    
endmodule

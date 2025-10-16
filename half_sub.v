`timescale 1ns / 1ps

module half_sub(
input a,b,
output reg diff,bor
);
    always @ (*) begin
        diff = a^b;
        bor = (~a)&b;
    end
endmodule

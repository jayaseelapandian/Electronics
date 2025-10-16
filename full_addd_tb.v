`timescale 1ns / 1ps

module full_addd_tb;

    reg a, b, c;
    wire sum, carry;

full_addd uut (
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );

 initial begin
 $display("A B C | Sum Carry");
 $monitor("%b %b %b |  %b    %b", a, b, c, sum, carry);
 a = 1'b0; b = 1'b0; c = 1'b0; #2;
 a = 1'b0; b = 1'b0; c = 1'b1; #2;
 a = 1'b0; b = 1'b1; c = 1'b0; #2;
 a = 1'b0; b = 1'b1; c = 1'b1; #2;
 a = 1'b1; b = 1'b0; c = 1'b0; #2;
 a = 1'b1; b = 1'b0; c = 1'b1; #2;
 a = 1'b1; b = 1'b1; c = 1'b0; #2;
 a = 1'b1; b = 1'b1; c = 1'b1; #2;

 $finish;
 end

endmodule

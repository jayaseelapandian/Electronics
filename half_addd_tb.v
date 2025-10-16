`timescale 1ns / 1ps

module half_addd_tb;
reg a;
reg b;
wire s;
wire c;

half_addd uut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
    );
    
initial begin
    $display("A B|S C");
    $monitor("%d %d|%d %d",a,b,s,c);
    
    a = 1'b0; b = 1'b0; #2;
    a = 1'b0; b = 1'b1; #2;
    a = 1'b1; b = 1'b0; #2;
    a = 1'b1; b = 1'b1; #2;
    $finish ;
    end
endmodule

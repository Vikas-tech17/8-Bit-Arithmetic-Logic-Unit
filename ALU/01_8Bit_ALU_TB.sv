// SystemVerilog testbench converted from the original Verilog testbench.
// Original stimulus/checking structure retained; simulate before publishing.

`timescale 1ns/1ns
module alu8_tb();
logic [7:0] a,b;
logic [2:0] sel;
logic [7:0] r;
logic c;

alu8 dut(a,b,sel,r,c);

task initialize;
begin
    a   = 8'd0;
    b   = 8'd0;
    sel = 3'd0;
end
endtask

task inputs;
input [7:0] x,y;
input[2:0]s;
begin
    a= x;
    b= y;
	sel= s;
end
endtask

initial
begin
    initialize;
	#2;
    inputs(8'd15,8'd10,3'b000);
    #10;
    $display("ADD a=%d b=%d r=%d c=%b %0t",a,b,r,c,$time);

    inputs(8'd20,8'd8,3'b001);
    #10;
    $display("SUB a=%d b=%d r=%d c=%b %0t",a,b,r,c,$time);

    inputs(8'd12,8'd10,3'b010);
    #10;
    $display("AND a=%b b=%b r=%b %0t",a,b,r,$time);

    inputs(8'd15,8'd13,3'b011);
    #10;
    $display("OR a=%b b=%b r=%b %0t",a,b,r,$time);

    inputs(8'd12,8'd10,3'b100);
    #10;
    $display("XOR a=%b b=%b r=%b %0t",a,b,r,$time);

    inputs(8'd12,8'd0,3'b101);
    #10;
    $display("NOT a=%b r=%b %0t",a,r,$time);

    inputs(8'd10,8'd0,3'b110);
    #10;
    $display("LSHIFT a=%b r=%b %0t",a,r,$time);

    inputs(8'd10,8'd0,3'b111);
    #10;
    $display("RSHIFT a=%b r=%b %0t",a,r,$time);
    #10;
    $finish;
end
endmodule
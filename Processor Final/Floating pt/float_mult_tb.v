
module fpm_tb();
reg [31:0]a,b;
reg clk,reset;


wire [63:0]s;
wire [31:0]out;

fpm f1(a,b,clk,out);

initial
clk=1'b1;

initial 
begin

reset=1'b0;
clk=1'b0;

a=32'b01000000011000000000000000000000; //3.5
b=32'b01000000100100000000000000000000; //4.5

#28
a=32'b01000000010001100110011001100110; //3.1
b=32'b01000000100000110011001100110011; //4.1

#28
a=32'b01000000010011001100110011001101; //3.2
b=32'b01000000100110011001100110011010; //4.8

#100 $finish;
end

always
#2 clk=~clk;

initial
$monitor($time,"clk=%b,a=%d,b=%d,out=%b",clk,a,b,out);

endmodule


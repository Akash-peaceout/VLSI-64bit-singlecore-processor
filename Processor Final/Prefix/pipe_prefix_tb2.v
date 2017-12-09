module pretb();
reg [31:0]x,y;
reg c,clk;
wire [31:0]s;
wire cout;

prefix16 p(s,cout,x,y,c,clk);



initial
begin

x=32'b01;
y=32'b10;
c=1;

#2
x=32'b10;
y=32'b01;
c=1;

#2
x=32'b110;
y=32'b111;
c=1;

#2
x=32'b0010;
y=32'b0011;
c=0;

#2
x=32'b100;
y=32'b110;
c=0;

#2
x=32'b001;
y=32'b0100;
c=1;

#2
x=32'b1101;
y=32'b0110;
c=1;


#2
x=32'b1010;
y=32'b1011;
c=1;
#2
x=32'b101101;
y=32'b110110;
c=1;
#2
x=32'b11101;
y=32'b01010;
c=1;    
#2;
#2;
#2;
#2;
end

initial
begin 
clk=0;
end
always
begin
#1 clk=~clk;
end

always 
begin
#30 $finish;
end 
initial
begin
$monitor($time,"\t%b    %b    %b    %b    %b   %b",clk,x,y,c,cout,s);
end
endmodule

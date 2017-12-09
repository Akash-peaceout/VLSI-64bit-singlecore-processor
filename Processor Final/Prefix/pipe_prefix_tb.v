module pretb();
reg [31:0]x,y;
reg c,clk;
wire [31:0]s;
wire cout;

prefix16 p(s,cout,x,y,c,clk);



initial
begin

x=32'd10;
y=32'd20;
c=1;

#2
x=32'd25;
y=32'd30;
c=1;

#2
x=32'd52;
y=32'd60;
c=1;

#2
x=32'd5;
y=32'd9;
c=0;

#2
x=32'd70;
y=32'd90;
c=0;

#2
x=32'd15;
y=32'd37;
c=1;

#2
x=32'd18;
y=32'd37;
c=1;


#2
x=32'd18;
y=32'd37;
c=1;
#2
x=32'd18;
y=32'd37;
c=1;
#2
x=32'd18;
y=32'd37;
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
$monitor($time,"\t%d    %d    %d    %d    %d   %d",clk,x,y,c,cout,s);
end
endmodule

module pa_tb();
	reg [31:0]a,b;
	reg c,clock;
	wire [31:0]sum;
	wire cout;

	pa p(a,b,c,sum,cout,clock);
	
	initial
	begin
	clock=1'b0;	
	end

always
begin
	#1 clock=~clock;
end

initial
begin
#4 a=32'd111;
   b=32'd222;
   c=0;
#4 a=32'd222;
   b=32'd333;
   c=0; 
#4 a=32'd333;
   b=32'd444;
   c=0; 
#4 a=32'd444;
   b=32'd555;
   c=0;  

#4 a=32'd666;
   b=32'd23;
   c=0;  
 
#4 a=32'd323;
   b=32'd457;
   c=0;  

#4 a=32'd112;
   b=32'd72;
   c=0;  

end

initial 
begin
	#400 $finish;
end

initial
begin
	$monitor($time," a=%d b=%d c=%b SUM=%d cout=%b",a,b,c,sum,cout);
end

endmodule

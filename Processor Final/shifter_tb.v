 module barrel_tb();
 	reg [31:0]a;
 	reg r,b4,b3,b2,b1,b0,clock;
 	wire [31:0]g;
 	barrel_shift b(a,b4,b3,b2,b1,b0,r,g,clock);
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
 		   
 		 #4
 		   a=32'd15;
 		   b0=1'd0;
 		   r=1'd1;
 		   b1=1'd0;
 		   b2=1'd0;
 		   b3=1'd0;
 		   b4=1'd1 ; 		    
 		   #4 a=32'd33;
 		   b0=1'd0;
 		   r=1'd1;
 		   b1=1'd1;
 		   b2=1'd0;
 		   b3=1'd0;
 		   b4=1'd0; 
 		   #4 a=32'd34;
 		   b0=1'd0;
 		   r=1'd1;
 		   b1=1'd0;
 		   b2=1'd1;
 		   b3=1'd0;
 		   b4=1'd0; 
           																 
 		end
 		initial
 		begin
 			#400 $finish;
 		end
 		initial
 		begin
 			$monitor($time,"a=%b,s=%b",a,g);
 		end
 	endmodule
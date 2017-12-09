module registers(rs1, rs2, ws, wd, rf, wf, rd1, rd2);

   input[2:0] rs1, rs2, ws;
   input      rf, wf;
   input [9:0] wd;

   output [9:0] rd1, rd2;
   reg [9:0] 	rd1, rd2;
   
   reg [9:0] 	register[7:0];

   integer 	i;
   
   initial
     begin
	register[0] = 10'h0;
	register[1] = 10'h2;
	register[2] = 10'h4;
	register[3] = 10'h0;
	register[4] = 10'h0;
	register[5] = 10'h5;
	register[6] = 10'h6;
	register[7] = 10'h7;
    wf=1'b1;
    wd=9'b10;
    #5
    rf=1'b1; 
     end 
   
	

   always @ (*)
     begin

	
	if(wf == 1'b1)
	  begin
	     register[ws] = wd;
	     $display($time, " Writing into the register R%d=%d", ws, register[ws]);
	  end

	if(rf == 1'b1)
	  begin
	     rd1 = register[rs1];
	     rd2 = register[rs2];
	     #1 $display($time, " Reading from the regs R%d=%d, R%d=%d",rs1,rd1,rs2,rd2);
	     
	  end
	
	

     end  

endmodule 

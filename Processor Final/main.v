`include "memory1.v"
`include "floadd.v"
`include "registers1.v"
`include "multiplier.v"
module alu(opcode,rg1,rg2,out,address);

input [4:0] opcode,address;
input[31:0] rg1,rg2;
output [63:0] out;
reg [31:0] out;
wire [31:0] out1;

wire [31:0] rg1,rg2;
wire [31:0] sum;
wire cout;
wire [31:0]sub;
wire coutb;
wire [63:0]mul;
wire outs1,as,bs,outs2;
wire [7:0]oute1,ae,be,oute2;
wire [22:0]outm1,am,bm,outm2;
wire [31:0]sumc;
wire coutc;
wire [31:0]subb;
wire coutbb;



parameter ADD   = 5'b00000;
parameter ADC   = 5'b00001;
parameter SUB   = 5'b00010;
parameter SBB   = 5'b00011;
parameter MUL   = 5'b00100;
parameter FADD  = 5'b00101;
parameter FSUB  = 5'b00110;
parameter FMUL  = 5'b00111;
parameter AND   = 5'b01000;
parameter OR    = 5'b01001;
parameter XOR   = 5'b01010;
parameter NAND  = 5'b01011;
parameter NOR   = 5'b01100;
parameter XNOR  = 5'b01101;
parameter NOT   = 5'b01110;
parameter NEG   = 5'b01111;
parameter LOAD  = 5'b10000;
parameter STORE = 5'b11000;

 prefix_adder p1(rg1,rg2,1'b0,cout,sum); 
 prefix_adder p2(rg1,rg2,1'b1,coutc,sumc); 
 prefix_adder p3(rg1,~rg2,1'b0,coutbb,subb); 
 prefix_adder p4(rg1,~rg2,1'b1,coutb,sub); 

floadd f(as,ae,am,bs,be,bm,outs1,oute1,outm1);
floadd f1(as,ae,am,~bs,be,bm,outs2,oute2,outm2);

initial
begin
as=rg1[31:31];
bs=rg2[31:31];
ae=rg1[30:23];
be=rg2[30:23];
am=rg1[22:0];
bm=rg2[22:0];
end

wire [63:0]multi;
FPM_32 g(rg1,rg2,multi,clk); /* CALL floating point multiplier */

wire [31:0]n,j;
wire c;
prefix_adder pn(n,32'd1,1'b0,c,j); /*call the prefix adder without pipeline */

initial
begin
n=~rg1;
end
reg [4:0] madd;
reg mread;
reg [31:0] min;
wire [31:0] mout;
memory memory1(madd,min,mout,mread);
reg   [31:0]  mem  [31:0];
initial
begin

//mem[0]=32'd0;
mem[1]=32'd1;
mem[2]=32'd2;
mem[3]=32'd3;
mem[4]=32'd4;
mem[5]=32'd5;
mem[6]=32'd6;
mem[7]=32'd7;
mem[8]=32'd8;
mem[9]=32'd9;
mem[10]=32'd10;
mem[11]=32'd11;
mem[12]=32'd12;
mem[13]=32'd13;
mem[14]=32'd14;
mem[15]=32'd15;
mem[16]=32'd16;
mem[17]=32'd17;
mem[18]=32'd18;
mem[19]=32'd19;
mem[20]=32'd20;
mem[21]=32'd21;
mem[22]=32'd22;
mem[23]=32'd23;
mem[24]=32'd24;
mem[25]=32'd25;
mem[26]=32'd26;
mem[27]=32'd27;
mem[28]=32'd28;
mem[29]=32'd29;
mem[30]=32'd30;
mem[31]=32'd31;

end
 

always @(*) 
begin

case (opcode )
                                           
                     
	ADD:begin  
        out<={cout,sum};
        out[63:33]<=0;           
        end	
    ADC:begin
        out<={cout,sum};
        out[63:33]<=0;
        end
    
    SUB:begin
        out<={coutb,sumb};
        out[63:33]<=0;
        end 

    SBB:begin
        out<={coutbb,sumbb};
        out[63:33]<=0;
        end   
   
    MUL:begin
        out<=mul;
        end

    FADD:begin
		 out<={outs1,oute1,outm1};
		 out[63:33]<=0;
		 end

    FSUB:begin       
         out<={outs2,oute2,outm2};               
         out[63:33]<=0;                   
        end
                        
    FMUL:begin
         out<={multi};                
         end

    AND:begin
        out<= rg1 & rg2;                 
        out[63:33]<=0;
        end

    OR:begin
       out<= rg1 | rg2;
       out[63:33]<=0;
       end

    XOR:begin
        out<= rg1 ^ rg2;                
        out[63:33]<=0;
        end

   NAND:begin
         out<= rg1 ~& rg2;                     
         out[63:33]<=0;
        end
                        
       NOR:begin
            out<= rg1 ~| rg2;                     
            out[63:33]<=0;
            end
                        
        NOT:begin
            out<=~rg1;                               
            out[63:33]<=0;
            end
                        
      NEG:begin
           out<={c,j};
           out[63:33]<=0;             
           end

     LOAD: begin
           out<=mem[address] ;
           end

     STORE:begin
           mem[address]<=rg1;             
           end 
                        
                        
                        		
endcase

end

endmodule

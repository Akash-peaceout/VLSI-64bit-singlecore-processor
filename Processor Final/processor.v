`include "program.v"
`include "registers1.v"
`include "main.v"

module processor(clock);

reg [4:0] pc;
reg [4:0] madd,adres;
input clock;
reg [4:0] rsrc1,rsrc2,rdst,opcode,op;
reg [31:0] ar1,ar2;
reg mread  ,rr; 
reg [31:0]min,rin ;
wire [31:0] mout,aout,r1,r2 ;
wire [31:0] out;
reg [31:0] ir ;
reg [4:0] mem,aadd;
integer f , d , e , w ;

memory memory(madd,min,mout,mread);
prog prog1(adres,out);
alu a(op,ar1,ar2,aout,aadd);
register res(rsrc1,rsrc2,rdst,rin,r1,r2,rr);


always @(posedge clock) begin // instruction fetch
        
    
        #0 if(f) begin 
           
       
        adres = pc ;
        #1 ir = out;   
        f = 0;
        d = 1 ;
        w=0;
        $display($time,".Fetched IR =  %b\n",ir);
        end 
        

end

always @(posedge clock) begin //decode
        
        #3 if (d) begin 
                rr = 1 ;
                opcode = ir [31:27] ;   // OPCODE
                rdst   = ir [26:22] ;   // RDST 
                rsrc1  = ir [4:0]   ;   // SRC1
                rsrc2  = ir [9:5]   ;   // SRC2
         $display($time,".      Decode (opcode)%b  (rsrc1)%b  (rsrc2)%b  (rdst)%b\n",opcode , rsrc1 ,rsrc2,rdst);
         e  = 1;
         d = 0;
         w=0;
         
        
        
        end

end 

always @(posedge clock) begin //execute
        
        #4 if (e ) begin 
                
                 if(opcode==4'b10000)
                 begin
                 madd= rsrc1;
                 mread=1;
                 rdst=mout;
                 end   
                 
                 else
                 begin  
                 op = opcode;
                 aadd=rdst;
                 ar1 = r1 ;
                 ar2 = r2 ;
                 #1 $display($time,".      Execute (opcode)%b  ([rsrc1])%d  ([rsrc2])%d  ([rdst])%d\n",opcode ,ar1, ar2 ,aout);
                 end
                 w = 1;
                e = 0;  
        
                
        
        end

end 

always @(posedge clock) begin //write
       
        #6 if (w) begin 
                
                
            rr=0;
            rin = aout;
            w=0;
            #1  f=1;
            #1 pc = pc+1;
         end

end 

initial begin 

pc = 0;
mem = 0;
f = 1 ; 
d = 0 ; 
e = 0 ; 
w = 0 ;
rr = 1 ;
end 

endmodule
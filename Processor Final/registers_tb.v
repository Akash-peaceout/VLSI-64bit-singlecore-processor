module registers_tb();
	 reg  [2:0] rs1, rs2, ws;
     reg  rf, wf;
     reg [9:0] wd;
     wire [9:0] rd1, rd2;
     registers r(rs1, rs2, ws, wd, rf, wf, rd1, rd2);
     initial
     begin
     	wf=1'b1;
     	ws=3'b0;
        wd=10'b100;
     	#5
     	wf=1'b1;
     	ws=3'b1;
     	wd=10'b101;
     	#5
     	rf=1'b1;
     	rs1=3'b0;
     	rs2=3'b1;
    end
endmodule
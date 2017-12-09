`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 03:40:30 PM
// Design Name: 
// Module Name: fpm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fpm(a,b,clk,out);

input [31:0] a,b;
input clk;
output reg [31:0] out;
wire [8:0]sum,sum1;
wire [63:0] prod;
wire cout,car;
wire [8:0]e1,e2;
wire s1,s2;
wire [31:0]m1,m2;

assign s1=a[31];
assign s2=b[31];
assign e1[7:0]=a[30:23];
assign e2[7:0]=b[30:23];
assign e1[8]=1'b0;
assign e2[8]=1'b0;
assign m1[23]=1'b1;
assign m2[23]=1'b1;
assign m1[22:0]=a[22:0];
assign m2[22:0]=b[22:0];

assign m1[31:24]=8'b0;
assign m2[31:24]=8'b0;

assign s=s1^s2;

wallace w0(m1,m2,clk,reset,prod,car);

cla c0(e1,e2,0,clk,sum,cout);
assign sum1= sum-9'b001111111;
always @ (*)
if(prod[47]==1'b1)
begin
out<={s,sum1[7:0],prod[46:24]};
end
else
begin
out<={s,sum1[7:0],prod[45:23]};
end
endmodule

module wallace(a,b,clk,reset,product,carry);
input [31:0]a,b;
input clk,reset;
wire [63:0]m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31,m32,s1,c1,s2,c2,s3,c3,s4,c4,s5,c5,s6,c6,s7,c7,s8,c8,s9,c9,s10,c10,s11,c11,s12,c12,s13,c13,s14,c14,s15,c15,s16,c16,s17,c17,s18,c18,s19,c19,s20,c20,s21,c21,s22,c22,s23,c23,s24,c24,s25,c25,s26,c26,s27,c27,s28,c28,s29,c29,s30,c30,bit31,bit32,sum1,carry1,sum2,carry2,sum3,carry3,sum4,carry4,sum5,carry5,sum6,carry6,sum7,carry7,sum8,carry8,sum9,carry9,sum10,carry10,sum11,carry11,sum12,carry12,sum13,carry13,sum14,carry14,sum15,carry15,sum16,carry16,sum17,carry17,sum18,carry18,sum19,carry19,sum20,carry20,sum21,carry21,sum22,carry22,sum23,carry23,sum24,carry24,sum25,carry25,sum26,carry26,sum27,carry27,sum28,carry28,sum29,carry29,sum30,carry30;
output [63:0]product;
output carry;


assign m1=b[0]?a:64'd0;
assign m2=b[1]?a<<1:64'd0;
assign m3=b[2]?a<<2:64'd0;
assign m4=b[3]?a<<3:64'd0;
assign m5=b[4]?a<<4:64'd0;
assign m6=b[5]?a<<5:64'd0;
assign m7=b[6]?a<<6:64'd0;
assign m8=b[7]?a<<7:64'd0;
assign m9=b[8]?a<<8:64'd0;
assign m10=b[9]?a<<9:64'd0;
assign m11=b[10]?a<<10:64'd0;
assign m12=b[11]?a<<11:64'd0;
assign m13=b[12]?a<<12:64'd0;
assign m14=b[13]?a<<13:64'd0;
assign m15=b[14]?a<<14:64'd0;
assign m16=b[15]?a<<15:64'd0;
assign m17=b[16]?a<<16:64'd0;
assign m18=b[17]?a<<17:64'd0;
assign m19=b[18]?a<<18:64'd0;
assign m20=b[19]?a<<19:64'd0;
assign m21=b[20]?a<<20:64'd0;
assign m22=b[21]?a<<21:64'd0;
assign m23=b[22]?a<<22:64'd0;
assign m24=b[23]?a<<23:64'd0;
assign m25=b[24]?a<<24:64'd0;
assign m26=b[25]?a<<25:64'd0;
assign m27=b[26]?a<<26:64'd0;
assign m28=b[27]?a<<27:64'd0;
assign m29=b[28]?a<<28:64'd0;
assign m30=b[29]?a<<29:64'd0;
assign m31=b[30]?a<<30:64'd0;
assign m32=b[31]?a<<31:64'd0;


csa_64 cs1(m1,m2,m3,s1,c1);
csa_64 cs2(m4,m5,m6,s2,c2);
csa_64 cs3(m7,m8,m9,s3,c3);
csa_64 cs4(m10,m11,m12,s4,c4);
csa_64 cs5(m13,m14,m15,s5,c5);
csa_64 cs6(m16,m17,m18,s6,c6);
csa_64 cs7(m19,m20,m21,s7,c7);
csa_64 cs8(m22,m23,m24,s8,c8);
csa_64 cs9(m25,m26,m27,s9,c9);
csa_64 cs10(m28,m29,m30,s10,c10);


dff_64 e1(s1,c1,sum1,carry1,clk,reset);
dff_64 e2(s2,c2,sum2,carry2,clk,reset);
dff_64 e3(s3,c3,sum3,carry3,clk,reset);
dff_64 e4(s4,c4,sum4,carry4,clk,reset);
dff_64 e5(s5,c5,sum5,carry5,clk,reset);
dff_64 e6(s6,c6,sum6,carry6,clk,reset);
dff_64 e7(s7,c7,sum7,carry7,clk,reset);
dff_64 e8(s8,c8,sum8,carry8,clk,reset);
dff_64 e9(s9,c9,sum9,carry9,clk,reset);
dff_64 e10(s10,c10,sum10,carry10,clk,reset);

dff_64 u3(m31,m32,bit31,bit32,clk,reset);

csa_64 cs11(sum1,carry1,sum2,s11,c11);
csa_64 cs12(carry2,sum3,carry3,s12,c12);
csa_64 cs13(sum4,carry4,sum5,s13,c13);
csa_64 cs14(carry5,sum6,carry6,s14,c14);
csa_64 cs15(sum7,carry7,sum8,s15,c15);
csa_64 cs16(carry8,sum9,carry9,s16,c16);
csa_64 cs17(sum10,carry10,bit31,s17,c17);

dff_64 e11(s11,c11,sum11,carry11,clk,reset);
dff_64 e12(s12,c12,sum12,carry12,clk,reset);
dff_64 e13(s13,c13,sum13,carry13,clk,reset);
dff_64 e14(s14,c14,sum14,carry14,clk,reset);
dff_64 e15(s15,c15,sum15,carry15,clk,reset);
dff_64 e16(s16,c16,sum16,carry16,clk,reset);
dff_64 e17(s17,c17,sum17,carry17,clk,reset);


csa_64 cs18(sum11,carry11,sum12,s18,c18);
csa_64 cs19(carry12,sum13,carry13,s19,c19);
csa_64 cs20(sum14,carry14,sum15,s20,c20);
csa_64 cs21(carry15,sum16,carry16,s21,c21);
csa_64 cs22(sum17,carry17,bit32,s22,c22);


dff_64 e18(s18,c18,sum18,carry18,clk,reset);
dff_64 e19(s19,c19,sum19,carry19,clk,reset);
dff_64 e20(s20,c20,sum20,carry20,clk,reset);
dff_64 e21(s21,c21,sum21,carry21,clk,reset);
dff_64 e22(s22,c22,sum22,carry22,clk,reset);



csa_64 cs23(sum18,carry18,sum19,s23,c23);
csa_64 cs24(carry19,sum20,carry20,s24,c24);
csa_64 cs25(sum21,carry21,sum22,s25,c25);


dff_64 e23(s23,c23,sum23,carry23,clk,reset);
dff_64 e24(s24,c24,sum24,carry24,clk,reset);
dff_64 e25(s25,c25,sum25,carry25,clk,reset);


csa_64 cs26(sum23,carry23,sum24,s26,c26);
csa_64 cs27(carry24,carry25,sum25,s27,c27);


dff_64 e26(s26,c26,sum26,carry26,clk,reset);
dff_64 e27(s27,c27,sum27,carry27,clk,reset);



csa_64 cs28(s26,c26,s27,s28,c28);
dff_64 e28(s28,c28,sum28,carry28,clk,reset);

csa_64 cs29(sum28,carry28,carry27,s29,c29);
dff_64 e29(s29,c29,sum29,carry29,clk,reset);

csa_64 cs30(sum29,carry29,carry22,s30,c30);
dff_64 e30(s30,c30,sum30,carry30,clk,reset);


cla_64 cla(sum30,carry30,0,clk,product,carry);

endmodule

module dff_64(d,d1,q,q1,clk,reset);
output [63:0]q,q1;
input [63:0]d,d1;
input clk,reset;
reg [63:0]q,qb,q1,q1b;
wire [63:0]d,d1;
wire clk,reset;
always @ (posedge(clk))
begin
   if(reset)
	begin
	      q<=0;
	      q1<=0;
         end
   else
       begin
             q<=d;
             q1<=d1;
        end
end
endmodule

module FA(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module csa_64(a,b,cin,sum,cout);
input [63:0]a;
input [63:0]b;
input [63:0]cin;
output [63:0]sum;
output [63:0]cout;
wire w;

assign cout[0]=0;
FA f0(a[0],b[0],cin[0],sum[0],cout[1]);
FA f1(a[1],b[1],cin[1],sum[1],cout[2]);
FA f2(a[2],b[2],cin[2],sum[2],cout[3]);
FA f3(a[3],b[3],cin[3],sum[3],cout[4]);
FA f4(a[4],b[4],cin[4],sum[4],cout[5]);
FA f5(a[5],b[5],cin[5],sum[5],cout[6]);
FA f6(a[6],b[6],cin[6],sum[6],cout[7]);
FA f7(a[7],b[7],cin[7],sum[7],cout[8]);
FA f8(a[8],b[8],cin[8],sum[8],cout[9]);
FA f9(a[9],b[9],cin[9],sum[9],cout[10]);
FA f10(a[10],b[10],cin[10],sum[10],cout[11]);
FA f11(a[11],b[11],cin[11],sum[11],cout[12]);
FA f12(a[12],b[12],cin[12],sum[12],cout[13]);
FA f13(a[13],b[13],cin[13],sum[13],cout[14]);
FA f14(a[14],b[14],cin[14],sum[14],cout[15]);
FA f15(a[15],b[15],cin[15],sum[15],cout[16]);
FA f16(a[16],b[16],cin[16],sum[16],cout[17]);
FA f17(a[17],b[17],cin[17],sum[17],cout[18]);
FA f18(a[18],b[18],cin[18],sum[18],cout[19]);
FA f19(a[19],b[19],cin[19],sum[19],cout[20]);
FA f20(a[20],b[20],cin[20],sum[20],cout[21]);
FA f21(a[21],b[21],cin[21],sum[21],cout[22]);
FA f22(a[22],b[22],cin[22],sum[22],cout[23]);
FA f23(a[23],b[23],cin[23],sum[23],cout[24]);
FA f24(a[24],b[24],cin[24],sum[24],cout[25]);
FA f25(a[25],b[25],cin[25],sum[25],cout[26]);
FA f26(a[26],b[26],cin[26],sum[26],cout[27]);
FA f27(a[27],b[27],cin[27],sum[27],cout[28]);
FA f28(a[28],b[28],cin[28],sum[28],cout[29]);
FA f29(a[29],b[29],cin[29],sum[29],cout[30]);
FA f30(a[30],b[30],cin[30],sum[30],cout[31]);
FA f31(a[31],b[31],cin[31],sum[31],cout[32]);
FA f32(a[32],b[32],cin[32],sum[32],cout[33]);
FA f33(a[33],b[33],cin[33],sum[33],cout[34]);
FA f34(a[34],b[34],cin[34],sum[34],cout[35]);
FA f35(a[35],b[35],cin[35],sum[35],cout[36]);
FA f36(a[36],b[36],cin[36],sum[36],cout[37]);
FA f37(a[37],b[37],cin[37],sum[37],cout[38]);
FA f38(a[38],b[38],cin[38],sum[38],cout[39]);
FA f39(a[39],b[39],cin[39],sum[39],cout[40]);
FA f40(a[40],b[40],cin[40],sum[40],cout[41]);
FA f41(a[41],b[41],cin[41],sum[41],cout[42]);
FA f42(a[42],b[42],cin[42],sum[42],cout[43]);
FA f43(a[43],b[43],cin[43],sum[43],cout[44]);
FA f44(a[44],b[44],cin[44],sum[44],cout[45]);
FA f45(a[45],b[45],cin[45],sum[45],cout[46]);
FA f46(a[46],b[46],cin[46],sum[46],cout[47]);
FA f47(a[47],b[47],cin[47],sum[47],cout[48]);
FA f48(a[48],b[48],cin[48],sum[48],cout[49]);
FA f49(a[49],b[49],cin[49],sum[49],cout[50]);
FA f50(a[50],b[50],cin[50],sum[50],cout[51]);
FA f51(a[51],b[51],cin[51],sum[51],cout[52]);
FA f52(a[52],b[52],cin[52],sum[52],cout[53]);
FA f53(a[53],b[53],cin[53],sum[53],cout[54]);
FA f54(a[54],b[54],cin[54],sum[54],cout[55]);
FA f55(a[55],b[55],cin[55],sum[55],cout[56]);
FA f56(a[56],b[56],cin[56],sum[56],cout[57]);
FA f57(a[57],b[57],cin[57],sum[57],cout[58]);
FA f58(a[58],b[58],cin[58],sum[58],cout[59]);
FA f59(a[59],b[59],cin[59],sum[59],cout[60]);
FA f60(a[60],b[60],cin[60],sum[60],cout[61]);
FA f61(a[61],b[61],cin[61],sum[61],cout[62]);
FA f62(a[62],b[62],cin[62],sum[62],cout[63]);
FA f63(a[63],b[63],cin[63],sum[63],w);


endmodule

 module cla_64(
    input [63:0]a,
    input [63:0]b,
    input cin,
    input clock,

    output reg [63:0]sum,
    output  reg cout
    );
    wire [63:0]c,g,p,a2,b2,g2,p2,c2;
    wire cin2,cin3,cout2;
    
    assign g=a & b;
    assign p=a ^ b;
    
    assign c[0]=cin;
    assign c[1]=g[0]+(p[0] & c[0]);
    assign c[2]=g[1]+(p[1] & c[1]);
    assign c[3]=g[2]+(p[2] & c[2]);
    assign c[4]=g[3]+(p[3] & c[3]);
    assign c[5]=g[4]+(p[4] & c[4]);
    assign c[6]=g[5]+(p[5] & c[5]);
    assign c[7]=g[6]+(p[6] & c[6]);
    assign c[8]=g[7]+(p[7] & c[7]);
    assign c[9]=g[8]+(p[8] & c[8]);
    assign c[10]=g[9]+(p[9] & c[9]);
    assign c[11]=g[10]+(p[10] & c[10]);
    assign c[12]=g[11]+(p[11] & c[11]);
    assign c[13]=g[12]+(p[12] & c[12]);
    assign c[14]=g[13]+(p[13] & c[13]);
    assign c[15]=g[14]+(p[14] & c[14]);
    assign c[16]=g[15]+(p[15] & c[15]);
    assign c[17]=g[16]+(p[16] & c[16]);
    assign c[18]=g[17]+(p[17] & c[17]);
    assign c[19]=g[18]+(p[18] & c[18]);
    assign c[20]=g[19]+(p[19] & c[19]);
    assign c[21]=g[20]+(p[20] & c[20]);
    assign c[22]=g[21]+(p[21] & c[21]);
    assign c[23]=g[22]+(p[22] & c[22]);
    assign c[24]=g[23]+(p[23] & c[23]);
    assign c[25]=g[24]+(p[24] & c[24]);
    assign c[26]=g[25]+(p[25] & c[25]);
    assign c[27]=g[26]+(p[26] & c[26]);
    assign c[28]=g[27]+(p[27] & c[27]);
    assign c[29]=g[28]+(p[28] & c[28]);
    assign c[30]=g[29]+(p[29] & c[29]);
    assign c[31]=g[30]+(p[30] & c[30]);
    assign c[32]=g[31]+(p[31] & c[31]);
    assign c[33]=g[32]+(p[32] & c[32]);
    assign c[34]=g[33]+(p[33] & c[33]);
    assign c[35]=g[34]+(p[34] & c[34]);
    assign c[36]=g[35]+(p[35] & c[35]);
    assign c[37]=g[36]+(p[36] & c[36]);
    assign c[38]=g[37]+(p[37] & c[37]);
    assign c[39]=g[38]+(p[38] & c[38]);
    assign c[40]=g[39]+(p[39] & c[39]);
    assign c[41]=g[40]+(p[40] & c[40]);
    assign c[42]=g[41]+(p[41] & c[41]);
    assign c[43]=g[42]+(p[42] & c[42]);
    assign c[44]=g[43]+(p[43] & c[43]);
    assign c[45]=g[44]+(p[44] & c[44]);
    assign c[46]=g[45]+(p[45] & c[45]);
    assign c[47]=g[46]+(p[46] & c[46]);
    assign c[48]=g[47]+(p[47] & c[47]);
    assign c[49]=g[48]+(p[48] & c[48]);
    assign c[50]=g[49]+(p[49] & c[49]);
    assign c[51]=g[50]+(p[50] & c[50]);
    assign c[52]=g[51]+(p[51] & c[51]);
    assign c[53]=g[52]+(p[52] & c[52]);
    assign c[54]=g[53]+(p[53] & c[53]);
    assign c[55]=g[54]+(p[54] & c[54]);
    assign c[56]=g[55]+(p[55] & c[55]);
    assign c[57]=g[56]+(p[56] & c[56]);
    assign c[58]=g[57]+(p[57] & c[57]);
    assign c[59]=g[58]+(p[58] & c[58]);
    assign c[60]=g[59]+(p[59] & c[59]);
    assign c[61]=g[60]+(p[60] & c[60]);
    assign c[62]=g[61]+(p[61] & c[61]);
    assign c[63]=g[62]+(p[62] & c[62]);

    pipo a1(a,a2,clock);
    pipo b1(b,b2,clock);
    pipo c1(c,c2,clock);
    
    always@(posedge clock)
    begin
    cout <= g[63]+(p[63] & c[63]);
     sum  <= a2 ^ b2 ^ c2;
    end
endmodule

module pipo(din,dout,clock);
    input [63:0] din;
    input clock;
    output [63:0] dout;
    wire [63:0] din;
    wire clock;
    reg [63:0] dout;
    always @(negedge clock) 
    begin
      
            dout <= din;
       
    end
endmodule


 module cla(
    input [8:0]a,
    input [8:0]b,
    input cin,
    input clock,

    output reg [8:0]sum,
    output  reg cout
    );
    wire [8:0]c,g,p,a2,b2,g2,p2,c2;
    wire cin2,cin3,cout2;
    
    assign g=a & b;
    assign p=a ^ b;
    
    assign c[0]=cin;
    assign c[1]=g[0]+(p[0] & c[0]);
    assign c[2]=g[1]+(p[1] & c[1]);
    assign c[3]=g[2]+(p[2] & c[2]);
    assign c[4]=g[3]+(p[3] & c[3]);
    assign c[5]=g[4]+(p[4] & c[4]);
    assign c[6]=g[5]+(p[5] & c[5]);
    assign c[7]=g[6]+(p[6] & c[6]);
    assign c[8]=g[7]+(p[7] & c[7]); 
   
    pipo1 a1(a,a2,clock);
    pipo1 b1(b,b2,clock);
    pipo1 c1(c,c2,clock);
    
    always@(posedge clock)
    begin
    cout <= g[8]+(p[8] & c[8]);
     sum  <= a2 ^ b2 ^ c2;
    end
endmodule

module pipo1(din,dout,clock);
    input [8:0] din;
    input clock;
    output [8:0] dout;
    wire [8:0] din;
    wire clock;
    reg [8:0] dout;
    always @(negedge clock) 
    begin
      
            dout <= din;
       
    end
endmodule


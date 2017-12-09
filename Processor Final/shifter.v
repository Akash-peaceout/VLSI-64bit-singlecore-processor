 module MUX(i0,i1,s,out);

    input i0,i1,s;
    output out;
    
    assign out=i0&(~s)|i1&(s);

endmodule

module barrel_shift(a,b4,b3,b2,b1,b0,r,s,clock);

    input [31:0]a;
    input r,b4,b3,b0,b1,b2,clock;
    
    output [31:0]s;
    wire [300:0]w;
    wire [300:0]d;
    //16-bit shift/rotate
    MUX r160(0,a[15],r,w[71]);
    MUX r161(0,a[14],r,w[72]);
    MUX r162(0,a[13],r,w[73]);
    MUX r163(0,a[12],r,w[74]);
    MUX r164(0,a[11],r,w[75]);
    MUX r165(0,a[10],r,w[76]);
    MUX r166(0,a[9], r,w[77]);
    MUX r167(0,a[8], r,w[78]);
    MUX r168(0,a[7], r,w[79]);
    MUX r169(0,a[6], r,w[80]);
    MUX r170(0,a[5], r,w[81]);
    MUX r171(0,a[4], r,w[82]);
    MUX r172(0,a[3], r,w[83]);
    MUX r173(0,a[2], r,w[84]);
    MUX r174(0,a[1], r,w[85]);
    MUX r175(0,a[0], r,w[86]);
    
    MUX x0(a[31],w[71],b4 ,w[87]);
    MUX x1(a[30],w[72],b4 ,w[88]);
    MUX x2(a[29],w[73],b4 ,w[89]);
    MUX x3(a[28],w[74],b4 ,w[90]);
    MUX x4(a[27],w[75],b4 ,w[91]);
    MUX x5(a[26],w[76],b4 ,w[92]);
    MUX x6(a[25],w[77],b4 ,w[93]);
    MUX x7(a[24],w[78],b4 ,w[94]);
    MUX x8(a[23],w[79],b4 ,w[95]);
    MUX x9(a[22],w[80],b4 ,w[96]);
    MUX x10(a[21],w[81],b4,w[97]);
    MUX x11(a[20],w[82],b4,w[98]);
    MUX x12(a[19],w[83],b4,w[99]);
    MUX x13(a[18],w[84],b4,w[100]);
    MUX x14(a[17],w[85],b4,w[101]);
    MUX x15(a[16],w[86],b4,w[102]);
    MUX x16(a[15],a[31],b4,w[103]);
    MUX x17(a[14],a[30],b4,w[104]);
    MUX x18(a[13],a[29],b4,w[105]);
    MUX x19(a[12],a[28],b4,w[106]);
    MUX x20(a[11],a[27],b4,w[107]);
    MUX x21(a[10],a[26],b4,w[108]);
    MUX x22(a[9] ,a[25],b4,w[109]);
    MUX x23(a[8] ,a[24],b4,w[110]);
    MUX x24(a[7] ,a[23],b4,w[111]);
    MUX x25(a[6] ,a[22],b4,w[112]);
    MUX x26(a[5] ,a[21],b4,w[113]);
    MUX x27(a[4] ,a[20],b4,w[114]);
    MUX x28(a[3] ,a[19],b4,w[115]);
    MUX x29(a[2] ,a[18],b4,w[116]);
    MUX x30(a[1] ,a[17],b4,w[117]);
    MUX x31(a[0] ,a[16],b4,w[118]);
 
    dff d134(w[87],clock,d[134]);
    dff d135(w[88],clock,d[135]);
    dff d136(w[89],clock,d[136]);
    dff d137(w[90],clock,d[137]);
    dff d138(w[91],clock,d[138]);
    dff d139(w[92],clock,d[139]);
    dff d140(w[93],clock,d[140]);
    dff d141(w[94],clock,d[141]);
    dff d142(w[95],clock,d[142]);
    dff d143(w[96],clock,d[143]);
    dff d144(w[97],clock,d[144]);
    dff d145(w[98],clock,d[145]);
    dff d146(w[99],clock,d[146]);
    dff d147(w[100],clock,d[147]);
    dff d148(w[101],clock,d[148]);
    dff d149(w[102],clock,d[149]);
    dff d150(w[103],clock,d[150]);
    dff d151(w[104],clock,d[151]);
    dff d152(w[105],clock,d[152]);
    dff d153(w[106],clock,d[153]);
    dff d154(w[107],clock,d[154]);
    dff d155(w[108],clock,d[155]);
    dff d156(w[109],clock,d[156]);
    dff d157(w[110],clock,d[157]);
    dff d158(w[111],clock,d[158]);
    dff d159(w[112],clock,d[159]);
    dff d160(w[113],clock,d[160]);
    dff d161(w[114],clock,d[161]);
    dff d162(w[115],clock,d[162]);
    dff d163(w[116],clock,d[163]);
    dff d164(w[117],clock,d[164]);
    dff d165(w[118],clock,d[165]);
    
    
    //8-bit shift/rotate
    dff d6(r,clock,d[6]);
    dff d7(b3,clock,d[7]);

    MUX r80(0,d[158],d[6],w[129]);
    MUX r81(0,d[159],d[6],w[130]);
    MUX r82(0,d[160],d[6],w[131]);
    MUX r83(0,d[161],d[6],w[132]);
    MUX r84(0,d[162],d[6],w[133]);
    MUX r85(0,d[163],d[6],w[134]);
    MUX r86(0,d[164],d[6],w[135]);
    MUX r87(0,d[165],d[6],w[136]);
    
    MUX k0(d[134],w[129],d[7],w[137]);
    MUX k1(d[135],w[130],d[7],w[138]);
    MUX k2(d[136],w[131],d[7],w[139]);
    MUX k3(d[137],w[132],d[7],w[140]);
    MUX k4(d[138],w[133],d[7],w[141]);
    MUX k5(d[139],w[134],d[7],w[142]);
    MUX k6(d[140],w[135],d[7],w[143]);
    MUX k7(d[141],w[136],d[7],w[144]);
    MUX k8(d[142],d[134],d[7],w[145]);
    MUX k9(d[143],d[135],d[7],w[146]);
    MUX k10(d[144],d[136],d[7],w[147]);
    MUX k11(d[145],d[137],d[7],w[148]);
    MUX k12(d[146],d[138],d[7],w[149]);
    MUX k13(d[147],d[139],d[7],w[150]);
    MUX k14(d[148],d[140],d[7],w[151]);
    MUX k15(d[149],d[141],d[7],w[152]);
    MUX k16(d[150],d[142],d[7],w[153]);
    MUX k17(d[151],d[143],d[7],w[154]);
    MUX k18(d[152],d[144],d[7],w[155]);
    MUX k19(d[153],d[145],d[7],w[156]);
    MUX k20(d[154],d[146],d[7],w[157]);
    MUX k21(d[155],d[147],d[7],w[158]);
    MUX k22(d[156],d[148],d[7],w[159]);
    MUX k23(d[157],d[149],d[7],w[160]);
    MUX k24(d[158],d[150],d[7],w[161]);
    MUX k25(d[159],d[151],d[7],w[162]);
    MUX k26(d[160],d[152],d[7],w[163]);
    MUX k27(d[161],d[153],d[7],w[164]);
    MUX k28(d[162],d[154],d[7],w[165]);
    MUX k29(d[163],d[155],d[7],w[166]);
    MUX k30(d[164],d[156],d[7],w[167]);
    MUX k31(d[165],d[157],d[7],w[168]);
     
    dff d166(w[137],clock,d[166]);
    dff d167(w[138],clock,d[167]);
    dff d168(w[139],clock,d[168]);
    dff d169(w[140],clock,d[169]);
    dff d170(w[141],clock,d[170]);
    dff d171(w[142],clock,d[171]);
    dff d172(w[143],clock,d[172]);
    dff d173(w[144],clock,d[173]);
    dff d174(w[145],clock,d[174]);
    dff d175(w[146],clock,d[175]);
    dff d176(w[147],clock,d[176]);
    dff d177(w[148],clock,d[177]);
    dff d178(w[149],clock,d[178]);
    dff d179(w[150],clock,d[179]);
    dff d180(w[151],clock,d[180]);
    dff d181(w[152],clock,d[181]);
    dff d182(w[153],clock,d[182]);
    dff d183(w[154],clock,d[183]);
    dff d184(w[155],clock,d[184]);
    dff d185(w[156],clock,d[185]);
    dff d186(w[157],clock,d[186]);
    dff d187(w[158],clock,d[187]);
    dff d188(w[159],clock,d[188]);
    dff d189(w[160],clock,d[189]);
    dff d190(w[161],clock,d[190]);
    dff d191(w[162],clock,d[191]);
    dff d192(w[163],clock,d[192]);
    dff d193(w[164],clock,d[193]);
    dff d194(w[165],clock,d[194]);
    dff d195(w[166],clock,d[195]);
    dff d196(w[167],clock,d[196]);
    dff d197(w[168],clock,d[197]);
    
    //4-bit shift/rotate
    dff d8(r,clock,d[8]);
    dff d9(d[8],clock,d[9]);
    dff d10(b2,clock,d[10]);
    dff d11(d[10],clock,d[11]);
    MUX r40(0,d[194],d[9],w[0]);
    MUX r41(0,d[195],d[9],w[1]);
    MUX r42(0,d[196],d[9],w[2]);
    MUX r43(0,d[197],d[9],w[3]);
    
    MUX s0(d[166],w[0],d[11],w[4]);
    dff d36(w[4],clock,d[36]);
    MUX s1(d[167],w[1],d[11],w[5]);
    dff d37(w[5],clock,d[37]);
    MUX s2(d[168],w[2],d[11],w[6]);
    dff d38(w[6],clock,d[38]);
    MUX s3(d[169],w[3],d[11],w[7]);
    dff d39(w[7],clock,d[39]);
    MUX s4(d[170],d[166],d[11],w[8]);
    dff d40(w[8],clock,d[40]);
    MUX s5(d[171],d[167],d[11],w[9]);
    dff d41(w[9],clock,d[41]);
    MUX s6(d[172],d[168],d[11],w[10]);
    dff d42(w[10],clock,d[42]);
    MUX s7(d[173],d[169],d[11],w[11]);
    dff d43(w[11],clock,d[43]);
    MUX s8(d[174],d[170],d[11],w[12]);
    dff d44(w[12],clock,d[44]);
    MUX s9(d[175],d[171],d[11],w[13]);
    dff d45(w[13],clock,d[45]);
    MUX s10(d[176],d[172],d[11],w[14]);
    dff d46(w[14],clock,d[46]);
    MUX s11(d[177],d[173],d[11],w[15]);
    dff d47(w[15],clock,d[47]);
    MUX s12(d[178],d[174],d[11],w[16]);
    dff d48(w[16],clock,d[48]);
    MUX s13(d[179],d[175],d[11],w[17]);
    dff d49(w[17],clock,d[49]);
    MUX s14(d[180],d[176],d[11],w[18]);
    dff d50(w[18],clock,d[50]);
    MUX s15(d[181],d[177],d[11],w[19]);
    dff d51(w[19],clock,d[51]);
    MUX s16(d[182],d[178],d[11],w[20]);
    dff d52(w[20],clock,d[52]);
    MUX s17(d[183],d[179],d[11],w[21]);
    dff d53(w[21],clock,d[53]);
    MUX s18(d[184],d[180],d[11],w[22]);
    dff d54(w[22],clock,d[54]);
    MUX s19(d[185],d[181],d[11],w[23]);
    dff d55(w[23],clock,d[55]);
    MUX s20(d[186],d[182],d[11],w[24]);
    dff d56(w[24],clock,d[56]);
    MUX s21(d[187],d[183],d[11],w[25]);
    dff d57(w[25],clock,d[57]);
    MUX s22(d[188],d[184],d[11],w[26]);
    dff d58(w[26],clock,d[58]);
    MUX s23(d[189],d[185],d[11],w[27]);
    dff d59(w[27],clock,d[59]);
    MUX s24(d[190],d[186],d[11],w[28]);
    dff d60(w[28],clock,d[60]);
    MUX s25(d[191],d[187],d[11],w[29]);
    dff d61(w[29],clock,d[61]);
    MUX s26(d[192],d[188],d[11],w[30]);
    dff d62(w[30],clock,d[62]);
    MUX s27(d[193],d[189],d[11],w[31]);
    dff d63(w[31],clock,d[63]);
    MUX s28(d[194],d[190],d[11],w[32]);
    dff d64(w[32],clock,d[64]);
    MUX s29(d[195],d[191],d[11],w[33]);
    dff d65(w[33],clock,d[65]);
    MUX s30(d[196],d[192],d[11],w[34]);
    dff d66(w[34],clock,d[66]);
    MUX s31(d[197],d[193],d[11],w[35]);
    dff d67(w[35],clock,d[67]);
    
    //2-bit shift/rotate
    dff d0(r,clock,d[0]);
    dff d12(d[0],clock,d[12]);
    dff d13(d[12],clock,d[13]);

    dff d1(b1,clock,d[1]);
    dff d14(d[1],clock,d[14]);
    dff d15(d[14],clock,d[15]);
    MUX r20(0,d[66],d[13],w[36]);
    MUX r21(0,d[67],d[13],w[37]);
    
    MUX y0(d[36],w[36],d[15],w[38]);
    dff d102(w[38],clock,d[102]);
    MUX y1(d[37],w[37],d[15],w[39]);
    dff d103(w[39],clock,d[103]);
    MUX y2(d[38],d[36],d[15],w[40]);
    dff d104(w[40],clock,d[104]);
    MUX y3(d[39],d[37],d[15],w[41]);
    dff d105(w[41],clock,d[105]);
    MUX y4(d[40],d[38],d[15],w[42]);
    dff d106(w[42],clock,d[106]);
    MUX y5(d[41],d[39],d[15],w[43]);
    dff d107(w[43],clock,d[107]);
    MUX y6(d[42],d[40],d[15],w[44]);
    dff d108(w[44],clock,d[108]);
    MUX y7(d[43],d[41],d[15],w[45]);
    dff d109(w[45],clock,d[109]);
    MUX y8(d[44],d[42],d[15],w[46]);
    dff d110(w[46],clock,d[110]);
    MUX y9(d[45],d[43],d[15],w[47]);
    dff d111(w[47],clock,d[111]);
    MUX y10(d[46],d[44],d[15],w[48]);
    dff d112(w[48],clock,d[112]);
    MUX y11(d[47],d[45],d[15],w[49]);
    dff d113(w[49],clock,d[113]);
    MUX y12(d[48],d[46],d[15],w[50]);
    dff d114(w[50],clock,d[114]);
    MUX y13(d[49],d[47],d[15],w[51]);
    dff d115(w[51],clock,d[115]);
    MUX y14(d[50],d[48],d[15],w[52]);
    dff d116(w[52],clock,d[116]);
    MUX y15(d[51],d[49],d[15],w[53]);
    dff d117(w[53],clock,d[117]);
    MUX y16(d[52],d[50],d[15],w[54]);
    dff d118(w[54],clock,d[118]);
    MUX y17(d[53],d[51],d[15],w[55]);
    dff d119(w[55],clock,d[119]);
    MUX y18(d[54],d[52],d[15],w[56]);
    dff d120(w[56],clock,d[120]);
    MUX y19(d[55],d[53],d[15],w[57]);
    dff d121(w[57],clock,d[121]);
    MUX y20(d[56],d[54],d[15],w[58]);
    dff d122(w[58],clock,d[122]);
    MUX y21(d[57],d[55],d[15],w[59]);
    dff d123(w[59],clock,d[123]);
    MUX y22(d[58],d[56],d[15],w[60]);
    dff d124(w[60],clock,d[124]);
    MUX y23(d[59],d[57],d[15],w[61]);
    dff d125(w[61],clock,d[125]);
    MUX y24(d[60],d[58],d[15],w[62]);
    dff d126(w[62],clock,d[126]);
    MUX y25(d[61],d[59],d[15],w[63]);
    dff d127(w[63],clock,d[127]);
    MUX y26(d[62],d[60],d[15],w[64]);
    dff d128(w[64],clock,d[128]);
    MUX y27(d[63],d[61],d[15],w[65]);
    dff d129(w[65],clock,d[129]);
    MUX y28(d[64],d[62],d[15],w[66]);
    dff d130(w[66],clock,d[130]);
    MUX y29(d[65],d[63],d[15],w[67]);
    dff d131(w[67],clock,d[131]);
    MUX y30(d[66],d[64],d[15],w[68]);
    dff d132(w[68],clock,d[132]);
    MUX y31(d[67],d[65],d[15],w[69]);
    dff d133(w[69],clock,d[133]);
    
    //1-bit shift/rotate
    
    dff d2(r,clock,d[2]);
    dff d3(d[2],clock,d[3]);
    dff d16(d[3],clock,d[16]);
    dff d17(d[16],clock,d[17]);
    
    dff d4(b0,clock,d[4]);
    dff d5(d[4],clock,d[5]);
    dff d18(d[5],clock,d[18]);
    dff d19(d[18],clock,d[19]);
    
    MUX r6(0,d[133],d[17],w[70]);
     
     
    MUX u31(d[102],w[70] , d[19],s[31]);
    MUX u30(d[103],d[102], d[19],s[30]);
    MUX u29(d[104],d[103], d[19],s[29]);
    MUX u28(d[105],d[104], d[19],s[28]);
    MUX u27(d[106],d[105], d[19],s[27]);
    MUX u26(d[107],d[106], d[19],s[26]);
    MUX u25(d[108],d[107], d[19],s[25]);
    MUX u24(d[109],d[108], d[19],s[24]);
    MUX u23(d[110],d[109], d[19],s[23]);
    MUX u22(d[111],d[110], d[19],s[22]);
    MUX u21(d[112],d[111], d[19],s[21]);
    MUX u20(d[113],d[112], d[19],s[20]);
    MUX u19(d[114],d[113], d[19],s[19]);
    MUX u18(d[115],d[114], d[19],s[18]);
    MUX u17(d[116],d[115], d[19],s[17]);
    MUX u16(d[117],d[116], d[19],s[16]);
    MUX u15(d[118],d[117], d[19],s[15]);
    MUX u14(d[119],d[118], d[19],s[14]);
    MUX u13(d[120],d[119], d[19],s[13]);
    MUX u12(d[121],d[120], d[19],s[12]);
    MUX u11(d[122],d[121], d[19],s[11]);
    MUX u10(d[123],d[122], d[19],s[10]);
    MUX  u9(d[124],d[123], d[19],s[9]);
    MUX  u8(d[125],d[124], d[19],s[8]);
    MUX  u7(d[126],d[125], d[19],s[7]);
    MUX  u6(d[127],d[126], d[19],s[6]);
    MUX  u5(d[128],d[127], d[19],s[5]);
    MUX  u4(d[129],d[128], d[19],s[4]);
    MUX  u3(d[130],d[129], d[19],s[3]);
    MUX  u2(d[131],d[130], d[19],s[2]);
    MUX  u1(d[132],d[131], d[19],s[1]);
    MUX  u0(d[133],d[132], d[19],s[0]);
endmodule
#! c:/iverilog/bin/vvp
:ivl_version "0.10.0 (devel)" "(s20130827)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0115B618 .scope module, "df" "df" 2 11;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "a"
    .port_info 1 /INPUT 1 "clock"
    .port_info 2 /OUTPUT 32 "q"
o00F93FCC .functor BUFZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; HiZ drive
v011540F0_0 .net "a", 31 0, o00F93FCC;  0 drivers
o00F93FE4 .functor BUFZ 1, C4<z>; HiZ drive
v01154148_0 .net "clock", 0 0, o00F93FE4;  0 drivers
v011541A0_0 .var "q", 31 0;
E_00F82A98 .event posedge, v01154148_0;
S_0115BF50 .scope module, "dff" "dff" 2 1;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a"
    .port_info 1 /INPUT 1 "clock"
    .port_info 2 /OUTPUT 1 "q"
o00F9405C .functor BUFZ 1, C4<z>; HiZ drive
v011541F8_0 .net "a", 0 0, o00F9405C;  0 drivers
o00F94074 .functor BUFZ 1, C4<z>; HiZ drive
v01154250_0 .net "clock", 0 0, o00F94074;  0 drivers
v01153750_0 .var "q", 0 0;
E_00F82C50 .event posedge, v01154250_0;
S_0115C020 .scope module, "registers_tb" "registers_tb" 3 1;
 .timescale 0 0;
v00F90940_0 .net "rd1", 9 0, v01151140_0;  1 drivers
v00F907E0_0 .net "rd2", 9 0, v01151198_0;  1 drivers
v00F909F0_0 .var "rf", 0 0;
v00F90838_0 .var "rs1", 2 0;
v00F908E8_0 .var "rs2", 2 0;
v00F90A48_0 .var "wd", 9 0;
v00F90470_0 .var "wf", 0 0;
v00F903C0_0 .var "ws", 2 0;
S_011537A8 .scope module, "r" "registers" 3 6, 4 1 0, S_0115C020;
 .timescale 0 0;
    .port_info 0 /INPUT 3 "rs1"
    .port_info 1 /INPUT 3 "rs2"
    .port_info 2 /INPUT 3 "ws"
    .port_info 3 /INPUT 10 "wd"
    .port_info 4 /INPUT 1 "rf"
    .port_info 5 /INPUT 1 "wf"
    .port_info 6 /OUTPUT 10 "rd1"
    .port_info 7 /OUTPUT 10 "rd2"
v01151140_0 .var "rd1", 9 0;
v01151198_0 .var "rd2", 9 0;
v011511F0 .array "register", 0 7, 9 0;
v01151248_0 .net "rf", 0 0, v00F909F0_0;  1 drivers
v011512A0_0 .net "rs1", 2 0, v00F90838_0;  1 drivers
v011512F8_0 .net "rs2", 2 0, v00F908E8_0;  1 drivers
v00F90238_0 .net "wd", 9 0, v00F90A48_0;  1 drivers
v00F90290_0 .net "wf", 0 0, v00F90470_0;  1 drivers
v00F90368_0 .net "ws", 2 0, v00F903C0_0;  1 drivers
v011511F0_0 .array/port v011511F0, 0;
E_00F82728/0 .event edge, v00F90290_0, v00F90238_0, v00F90368_0, v011511F0_0;
v011511F0_1 .array/port v011511F0, 1;
v011511F0_2 .array/port v011511F0, 2;
v011511F0_3 .array/port v011511F0, 3;
v011511F0_4 .array/port v011511F0, 4;
E_00F82728/1 .event edge, v011511F0_1, v011511F0_2, v011511F0_3, v011511F0_4;
v011511F0_5 .array/port v011511F0, 5;
v011511F0_6 .array/port v011511F0, 6;
v011511F0_7 .array/port v011511F0, 7;
E_00F82728/2 .event edge, v011511F0_5, v011511F0_6, v011511F0_7, v01151248_0;
E_00F82728/3 .event edge, v011512A0_0, v011512F8_0, v01151140_0, v01151198_0;
E_00F82728 .event/or E_00F82728/0, E_00F82728/1, E_00F82728/2, E_00F82728/3;
    .scope S_0115B618;
T_0 ;
    %wait E_00F82A98;
    %load/v 8, v011540F0_0, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v011541A0_0, 0, 8;
    %jmp T_0;
    .thread T_0;
    .scope S_0115BF50;
T_1 ;
    %wait E_00F82C50;
    %load/v 8, v011541F8_0, 1;
    %ix/load 0, 1, 0;
    %assign/v0 v01153750_0, 0, 8;
    %jmp T_1;
    .thread T_1;
    .scope S_011537A8;
T_2 ;
    %ix/load 1, 0, 0;
    %ix/load 3, 0, 0;
    %set/av v011511F0, 0, 10;
    %movi 8, 2, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 1, 0;
    %set/av v011511F0, 8, 10;
    %movi 8, 4, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 2, 0;
    %set/av v011511F0, 8, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 3, 0;
    %set/av v011511F0, 0, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 4, 0;
    %set/av v011511F0, 0, 10;
    %movi 8, 5, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 5, 0;
    %set/av v011511F0, 8, 10;
    %movi 8, 6, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 6, 0;
    %set/av v011511F0, 8, 10;
    %movi 8, 7, 10;
    %ix/load 1, 0, 0;
    %ix/load 3, 7, 0;
    %set/av v011511F0, 8, 10;
    %end;
    .thread T_2;
    .scope S_011537A8;
T_3 ;
    %wait E_00F82728;
    %load/v 8, v00F90290_0, 1;
    %jmp/0xz  T_3.0, 8;
    %load/v 8, v00F90238_0, 10;
    %load/v 18, v00F90368_0, 3;
    %pad 21, 0, 2;
    %ix/get 3, 18, 5;
    %jmp/1 t_0, 4;
    %ix/load 1, 0, 0;
    %set/av v011511F0, 8, 10;
t_0 ;
    %load/v 18, v00F90368_0, 3;
    %pad 21, 0, 2;
    %ix/get 3, 18, 5;
    %load/av 8, v011511F0, 10;
    %vpi_call 4 36 "$display", $time, " Writing into the register R%d=%d", v00F90368_0, T<8,10,u> {0 0};
T_3.0 ;
    %load/v 8, v01151248_0, 1;
    %jmp/0xz  T_3.2, 8;
    %load/v 18, v011512A0_0, 3;
    %pad 21, 0, 2;
    %ix/get 3, 18, 5;
    %load/av 8, v011511F0, 10;
    %set/v v01151140_0, 8, 10;
    %load/v 18, v011512F8_0, 3;
    %pad 21, 0, 2;
    %ix/get 3, 18, 5;
    %load/av 8, v011511F0, 10;
    %set/v v01151198_0, 8, 10;
    %delay 1, 0;
    %vpi_call 4 43 "$display", $time, " Reading from the regs R%d=%d, R%d=%d", v011512A0_0, v01151140_0, v011512F8_0, v01151198_0 {0 0};
T_3.2 ;
    %jmp T_3;
    .thread T_3, $push;
    .scope S_0115C020;
T_4 ;
    %set/v v00F90470_0, 1, 1;
    %set/v v00F903C0_0, 0, 3;
    %movi 8, 4, 10;
    %set/v v00F90A48_0, 8, 10;
    %delay 5, 0;
    %set/v v00F90470_0, 1, 1;
    %movi 8, 1, 3;
    %set/v v00F903C0_0, 8, 3;
    %movi 8, 5, 10;
    %set/v v00F90A48_0, 8, 10;
    %delay 5, 0;
    %set/v v00F909F0_0, 1, 1;
    %set/v v00F90838_0, 0, 3;
    %movi 8, 1, 3;
    %set/v v00F908E8_0, 8, 3;
    %end;
    .thread T_4;
# The file index is used to find the file name in the following table.
:file_names 5;
    "N/A";
    "<interactive>";
    "d_flip_flop.v";
    "registers_tb.v";
    "registers.v";

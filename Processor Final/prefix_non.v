module white_dot(gout,aout,gl,al,gr,ar);
output gout,aout;
input gl,al,gr,ar;
assign gout = gl | (al & gr);
assign aout = al & ar;
endmodule

module black_dot(gout,gl,al,gr);
output gout;
input gr,gl,al;
assign gout = gl | (al & gr);
endmodule

module prefix_adder(x,y,cin,cout,s);

input [31:0]x,y;
input cin;

output [31:0]s;
output cout;

wire [31:0]c,p;
byte G[];
byte A[];


assign p= x^y;
assign g= x.y;


//level 1
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l13([4:4]g,[3:3]g,[4:4]a,[3:3]a,G[2],A[2]);
white_dot l14([6:6]g,[5:5]g,[6:6]a,[5:5]a,G[3],A[3]);
white_dot l15([8:8]g,[7:7]g,[8:8]a,[7:7]a,G[4],A[4]);
white_dot l16([10:10]g,[9:9]g,[10:10]a,[9:9]a,G[5],A[5]);
white_dot l17([12:12]g,[11:11]g,[12:12]a,[11:11]a,G[6],A[6]);
white_dot l18([14:14]g,[13:13]g,[14:14]a,[13:13]a,G[7],A[7]);
white_dot l19([16:16]g,[15:15]g,[16:16]a,[15:15]a,G[8],A[8]);
white_dot l110([18:18]g,[17:17]g,[18:18]a,[17:17]a,G[9],A[9]);
white_dot l111([20:20]g,[19:19]g,[20:20]a,[19:19]a,G[10],A[10]);
white_dot l112([22:22]g,[21:21]g,[22:22]a,[21:21]a,G[11],A[11]);
white_dot l113([24:24]g,[23:23]g,[24:24]a,[23:23]a,G[12],A[12]);
white_dot l114([26:26]g,[25:25]g,[26:26]a,[25:25]a,G[13],A[13]);
white_dot l115([28:28]g,[27:27]g,[28:28]a,[27:27]a,G[14],A[14]);
white_dot l116([30:30]g,[31:31]g,[30:30]a,[31:31]a,G[15],A[15]);


//level 2
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);


//level 3
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);





//level 3
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);


//level  4
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
black_dot l11([0:0]g,cin,[0:0]a,G[0]);
white_dot l12([2:2]g,[1:1]g,[2:2]a,[1:1]a,G[1],A[1]);



//level 5
black_dot l11([0:0]g,cin,[0:0]a,G[0]);

endmodule
module paralsub (
    input [3:0]a,
    input [3:0]b,
    output [3:0] diff,
    output bor
);
wire [2:0]bw;
wire [3:0]nb;
assign nb=~b;
subt s1(a[0],nb[0],1'b1,diff[0],bw[0]);
subt s2(a[1],nb[1],bw[0],diff[1],bw[1]);
subt s3(a[2],nb[2],bw[1],diff[2],bw[2]);
subt s4(a[3],nb[3],bw[2],diff[3],bor);
    
endmodule
module subt (
    input a,b,c,output diff,bor
);
assign diff=a^b^c;
assign bor=a&b|b&c|c&a;
    
endmodule
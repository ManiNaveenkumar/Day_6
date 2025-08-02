module tb_paralsub;
reg [3:0]a;
reg [3:0]b;
wire bor;
wire [3:0] diff;
paralsub uut(.a(a),.b(b),.diff(diff),.bor(bor));
initial begin
    $dumpfile("paralsub.vcd");
    $dumpvars(0,tb_paralsub);
    #10;
    a=4'b0001;b=4'b1001;#10;
    a=4'b1001;b=4'b1010;#10;
    a=4'b0101;b=4'b1001;#10;
    a=4'b0101;b=4'b1001;#10;
    a=4'b0000;b=4'b1001;#10;
    $finish;
end    
endmodule
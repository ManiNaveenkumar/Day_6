 iverilog -o paral.out tb_paralsub.v paralsub.v
 vvp paral.out
 gtkwave paralsub.vcd

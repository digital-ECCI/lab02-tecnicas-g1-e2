`include "plus1bit.v"
`timescale 1s/1s


module compuertas_tb;

reg A;
reg B;
reg C;

wire S0;
wire S1;
wire S2;

compuertas uut (
    .A(A),
    .B(B),
    .C(C),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .SX(SX),
    .SY(SY)
      
);

initial begin
    A=0; 
    B=0; 
    C=0; 
    #10;
    
    A=0; 
    B=0; 
    C=1; 
    #10;
    
    A=0; 
    B=1; 
    C=0; 
    #10;
    
    A=0; 
    B=1; 
    C=1;
    #10;

    A=1; 
    B=0; 
    C=0; 
    #10;

    A=1; 
    B=0; 
    C=1; 
    #10;

    A=1; 
    B=1; 
    C=0; 
    #10;

    A=1; 
    B=1; 
    C=1; 
    #10;
    
end


initial begin:TEST_CASE
    $dumpfile("simulacion_1bit.vcd");
    $dumpvars(0, uut);
    #10 $finish;
end

endmodule

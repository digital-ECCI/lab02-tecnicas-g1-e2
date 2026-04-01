`timescale 1s/1s

module compuertas_tb;

reg A;
reg B;

wire S0;
wire S1;
wire S2;
wire S3;
wire S4;
wire S5;

compuertas uut (
    .A(A),
    .B(B),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .S3(S3),
    .S4(S4),
    .S5(S5)
);

initial begin
    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
end

initial begin
    $dumpfile("simulacion_1bit.vcd");
    $dumpvars(0, compuertas_tb);
    #50 $finish;
end

endmodule
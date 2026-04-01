module compuertas(
input A,
input B,
output S0,
output S1,
output S2,
output S3,
output S4,
output S5
);

assign S0 = A & B;
assign S1 = A | B;
assign S2 = A ^ B;
assign S3 = A ~^ B;
assign S4 = ~A;
assign S5 = ~B;

endmodule

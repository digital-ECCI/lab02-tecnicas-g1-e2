module plus1bit(
input A,
input B,
input C,
output S0,
output C0

);

wire x_ab;
wire cout_t;
wire a_ab; 

assign x_ab = A ^ B;
assign cout_t = x_ab & C;
assign a_ab = A & B;
assign S0 = C ^ x_ab;
assign C0 = a_ab | cout_t;

endmodule
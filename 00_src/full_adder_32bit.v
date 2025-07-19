module full_adder_32bit (
    input      [31:0] A_i, 
    input      [31:0] Y_i,
    input             C_i,
    output reg [31:0] Sum_o,
    output reg        C_o
);
  wire [30:0] c;

  full_adder fa0  (.X_i(A_i[0]),  .Y_i(Y_i[0]),  .C_i(C_i),     .S_o(Sum_o[0]),  .C_o(c[0]));
  full_adder fa1  (.X_i(A_i[1]),  .Y_i(Y_i[1]),  .C_i(c[0]),    .S_o(Sum_o[1]),  .C_o(c[1]));
  full_adder fa2  (.X_i(A_i[2]),  .Y_i(Y_i[2]),  .C_i(c[1]),    .S_o(Sum_o[2]),  .C_o(c[2]));
  full_adder fa3  (.X_i(A_i[3]),  .Y_i(Y_i[3]),  .C_i(c[2]),    .S_o(Sum_o[3]),  .C_o(c[3]));
  full_adder fa4  (.X_i(A_i[4]),  .Y_i(Y_i[4]),  .C_i(c[3]),    .S_o(Sum_o[4]),  .C_o(c[4]));
  full_adder fa5  (.X_i(A_i[5]),  .Y_i(Y_i[5]),  .C_i(c[4]),    .S_o(Sum_o[5]),  .C_o(c[5]));
  full_adder fa6  (.X_i(A_i[6]),  .Y_i(Y_i[6]),  .C_i(c[5]),    .S_o(Sum_o[6]),  .C_o(c[6]));
  full_adder fa7  (.X_i(A_i[7]),  .Y_i(Y_i[7]),  .C_i(c[6]),    .S_o(Sum_o[7]),  .C_o(c[7]));
  full_adder fa8  (.X_i(A_i[8]),  .Y_i(Y_i[8]),  .C_i(c[7]),    .S_o(Sum_o[8]),  .C_o(c[8]));
  full_adder fa9  (.X_i(A_i[9]),  .Y_i(Y_i[9]),  .C_i(c[8]),    .S_o(Sum_o[9]),  .C_o(c[9]));
  full_adder fa10 (.X_i(A_i[10]), .Y_i(Y_i[10]), .C_i(c[9]),    .S_o(Sum_o[10]), .C_o(c[10]));
  full_adder fa11 (.X_i(A_i[11]), .Y_i(Y_i[11]), .C_i(c[10]),   .S_o(Sum_o[11]), .C_o(c[11]));
  full_adder fa12 (.X_i(A_i[12]), .Y_i(Y_i[12]), .C_i(c[11]),   .S_o(Sum_o[12]), .C_o(c[12]));
  full_adder fa13 (.X_i(A_i[13]), .Y_i(Y_i[13]), .C_i(c[12]),   .S_o(Sum_o[13]), .C_o(c[13]));
  full_adder fa14 (.X_i(A_i[14]), .Y_i(Y_i[14]), .C_i(c[13]),   .S_o(Sum_o[14]), .C_o(c[14]));
  full_adder fa15 (.X_i(A_i[15]), .Y_i(Y_i[15]), .C_i(c[14]),   .S_o(Sum_o[15]), .C_o(c[15]));
  full_adder fa16 (.X_i(A_i[16]), .Y_i(Y_i[16]), .C_i(c[15]),   .S_o(Sum_o[16]), .C_o(c[16]));
  full_adder fa17 (.X_i(A_i[17]), .Y_i(Y_i[17]), .C_i(c[16]),   .S_o(Sum_o[17]), .C_o(c[17]));
  full_adder fa18 (.X_i(A_i[18]), .Y_i(Y_i[18]), .C_i(c[17]),   .S_o(Sum_o[18]), .C_o(c[18]));
  full_adder fa19 (.X_i(A_i[19]), .Y_i(Y_i[19]), .C_i(c[18]),   .S_o(Sum_o[19]), .C_o(c[19]));
  full_adder fa20 (.X_i(A_i[20]), .Y_i(Y_i[20]), .C_i(c[19]),   .S_o(Sum_o[20]), .C_o(c[20]));
  full_adder fa21 (.X_i(A_i[21]), .Y_i(Y_i[21]), .C_i(c[20]),   .S_o(Sum_o[21]), .C_o(c[21]));
  full_adder fa22 (.X_i(A_i[22]), .Y_i(Y_i[22]), .C_i(c[21]),   .S_o(Sum_o[22]), .C_o(c[22]));
  full_adder fa23 (.X_i(A_i[23]), .Y_i(Y_i[23]), .C_i(c[22]),   .S_o(Sum_o[23]), .C_o(c[23]));
  full_adder fa24 (.X_i(A_i[24]), .Y_i(Y_i[24]), .C_i(c[23]),   .S_o(Sum_o[24]), .C_o(c[24]));
  full_adder fa25 (.X_i(A_i[25]), .Y_i(Y_i[25]), .C_i(c[24]),   .S_o(Sum_o[25]), .C_o(c[25]));
  full_adder fa26 (.X_i(A_i[26]), .Y_i(Y_i[26]), .C_i(c[25]),   .S_o(Sum_o[26]), .C_o(c[26]));
  full_adder fa27 (.X_i(A_i[27]), .Y_i(Y_i[27]), .C_i(c[26]),   .S_o(Sum_o[27]), .C_o(c[27]));
  full_adder fa28 (.X_i(A_i[28]), .Y_i(Y_i[28]), .C_i(c[27]),   .S_o(Sum_o[28]), .C_o(c[28]));
  full_adder fa29 (.X_i(A_i[29]), .Y_i(Y_i[29]), .C_i(c[28]),   .S_o(Sum_o[29]), .C_o(c[29]));
  full_adder fa30 (.X_i(A_i[30]), .Y_i(Y_i[30]), .C_i(c[29]),   .S_o(Sum_o[30]), .C_o(c[30]));
  full_adder fa31 (.X_i(A_i[31]), .Y_i(Y_i[31]), .C_i(c[30]),   .S_o(Sum_o[31]), .C_o(C_o));
endmodule

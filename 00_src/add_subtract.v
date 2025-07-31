module add_subtract (
    input  [31:0] a_i,
    input  [31:0] b_i,
    input         cin_i,     // 0: Cộng, 1: Trừ
    output [31:0] result_o,
    output        cout_o
);
  wire [31:0] carry_i;
  wire [31:0] b_mod_i;
  wire raw_cout;
  assign cout_o = cin_i ? ~raw_cout : raw_cout;
  // Tính b XOR cin cho từng bit
  assign b_mod_i = b_i ^ {32{cin_i}}; // nếu b_i là [3:0] và cin_i là 1 bit
  // FA[0]
  full_adder fa0 (.X_i(a_i[0]), .B_i(b_mod_i[0]), .C_i(cin_i),   .S_o(result_o[0]),  .C_o(carry_i[0]));

  // FA[1] đến FA[30]
  full_adder fa1  (.X_i(a_i[1]),  .B_i(b_mod_i[1]),  .C_i(carry_i[0]),  .S_o(result_o[1]),  .C_o(carry_i[1]));
  full_adder fa2  (.X_i(a_i[2]),  .B_i(b_mod_i[2]),  .C_i(carry_i[1]),  .S_o(result_o[2]),  .C_o(carry_i[2]));
  full_adder fa3  (.X_i(a_i[3]),  .B_i(b_mod_i[3]),  .C_i(carry_i[2]),  .S_o(result_o[3]),  .C_o(carry_i[3]));
  full_adder fa4  (.X_i(a_i[4]),  .B_i(b_mod_i[4]),  .C_i(carry_i[3]),  .S_o(result_o[4]),  .C_o(carry_i[4]));
  full_adder fa5  (.X_i(a_i[5]),  .B_i(b_mod_i[5]),  .C_i(carry_i[4]),  .S_o(result_o[5]),  .C_o(carry_i[5]));
  full_adder fa6  (.X_i(a_i[6]),  .B_i(b_mod_i[6]),  .C_i(carry_i[5]),  .S_o(result_o[6]),  .C_o(carry_i[6]));
  full_adder fa7  (.X_i(a_i[7]),  .B_i(b_mod_i[7]),  .C_i(carry_i[6]),  .S_o(result_o[7]),  .C_o(carry_i[7]));
  full_adder fa8  (.X_i(a_i[8]),  .B_i(b_mod_i[8]),  .C_i(carry_i[7]),  .S_o(result_o[8]),  .C_o(carry_i[8]));
  full_adder fa9  (.X_i(a_i[9]),  .B_i(b_mod_i[9]),  .C_i(carry_i[8]),  .S_o(result_o[9]),  .C_o(carry_i[9]));
  full_adder fa10 (.X_i(a_i[10]), .B_i(b_mod_i[10]), .C_i(carry_i[9]),  .S_o(result_o[10]), .C_o(carry_i[10]));
  full_adder fa11 (.X_i(a_i[11]), .B_i(b_mod_i[11]), .C_i(carry_i[10]), .S_o(result_o[11]), .C_o(carry_i[11]));
  full_adder fa12 (.X_i(a_i[12]), .B_i(b_mod_i[12]), .C_i(carry_i[11]), .S_o(result_o[12]), .C_o(carry_i[12]));
  full_adder fa13 (.X_i(a_i[13]), .B_i(b_mod_i[13]), .C_i(carry_i[12]), .S_o(result_o[13]), .C_o(carry_i[13]));
  full_adder fa14 (.X_i(a_i[14]), .B_i(b_mod_i[14]), .C_i(carry_i[13]), .S_o(result_o[14]), .C_o(carry_i[14]));
  full_adder fa15 (.X_i(a_i[15]), .B_i(b_mod_i[15]), .C_i(carry_i[14]), .S_o(result_o[15]), .C_o(carry_i[15]));
  full_adder fa16 (.X_i(a_i[16]), .B_i(b_mod_i[16]), .C_i(carry_i[15]), .S_o(result_o[16]), .C_o(carry_i[16]));
  full_adder fa17 (.X_i(a_i[17]), .B_i(b_mod_i[17]), .C_i(carry_i[16]), .S_o(result_o[17]), .C_o(carry_i[17]));
  full_adder fa18 (.X_i(a_i[18]), .B_i(b_mod_i[18]), .C_i(carry_i[17]), .S_o(result_o[18]), .C_o(carry_i[18]));
  full_adder fa19 (.X_i(a_i[19]), .B_i(b_mod_i[19]), .C_i(carry_i[18]), .S_o(result_o[19]), .C_o(carry_i[19]));
  full_adder fa20 (.X_i(a_i[20]), .B_i(b_mod_i[20]), .C_i(carry_i[19]), .S_o(result_o[20]), .C_o(carry_i[20]));
  full_adder fa21 (.X_i(a_i[21]), .B_i(b_mod_i[21]), .C_i(carry_i[20]), .S_o(result_o[21]), .C_o(carry_i[21]));
  full_adder fa22 (.X_i(a_i[22]), .B_i(b_mod_i[22]), .C_i(carry_i[21]), .S_o(result_o[22]), .C_o(carry_i[22]));
  full_adder fa23 (.X_i(a_i[23]), .B_i(b_mod_i[23]), .C_i(carry_i[22]), .S_o(result_o[23]), .C_o(carry_i[23]));
  full_adder fa24 (.X_i(a_i[24]), .B_i(b_mod_i[24]), .C_i(carry_i[23]), .S_o(result_o[24]), .C_o(carry_i[24]));
  full_adder fa25 (.X_i(a_i[25]), .B_i(b_mod_i[25]), .C_i(carry_i[24]), .S_o(result_o[25]), .C_o(carry_i[25]));
  full_adder fa26 (.X_i(a_i[26]), .B_i(b_mod_i[26]), .C_i(carry_i[25]), .S_o(result_o[26]), .C_o(carry_i[26]));
  full_adder fa27 (.X_i(a_i[27]), .B_i(b_mod_i[27]), .C_i(carry_i[26]), .S_o(result_o[27]), .C_o(carry_i[27]));
  full_adder fa28 (.X_i(a_i[28]), .B_i(b_mod_i[28]), .C_i(carry_i[27]), .S_o(result_o[28]), .C_o(carry_i[28]));
  full_adder fa29 (.X_i(a_i[29]), .B_i(b_mod_i[29]), .C_i(carry_i[28]), .S_o(result_o[29]), .C_o(carry_i[29]));
  full_adder fa30 (.X_i(a_i[30]), .B_i(b_mod_i[30]), .C_i(carry_i[29]), .S_o(result_o[30]), .C_o(carry_i[30]));
  full_adder fa31 (.X_i(a_i[31]), .B_i(b_mod_i[31]), .C_i(carry_i[30]), .S_o(result_o[31]), .C_o(raw_cout));
endmodule

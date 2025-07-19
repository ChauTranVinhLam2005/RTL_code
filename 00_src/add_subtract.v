module add_subtract #(
    parameter BIT = 32
) (
    input  [BIT-1:0] a_i,
    input  [BIT-1:0] b_i,
    input            cin_i,     // 0: Cộng, 1: Trừ
    output [BIT-1:0] result_o,
    output           cout_o
);
  wire [BIT-2:0] c_i;
  wire [BIT-1:0] b_mod_i;

  // Tính b XOR cin cho từng bit
  xor X1 (b_mod_i, b_i, cin_i);
  // FA[0]
  full_adder_32bit fa0 (.A_i(a_i[0]), .Y_i(b_mod_i[0]), .C_i(cin_i),   .Sum_o(result_o[0]),  .C_o(c_i[0]));

  // FA[1] đến FA[30]
  full_adder_32bit fa1  (.A_i(a_i[1]),  .Y_i(b_mod_i[1]),  .C_i(c_i[0]),  .Sum_o(result_o[1]),  .C_o(c_i[1]));
  full_adder_32bit fa2  (.A_i(a_i[2]),  .Y_i(b_mod_i[2]),  .C_i(c_i[1]),  .Sum_o(result_o[2]),  .C_o(c_i[2]));
  full_adder_32bit fa3  (.A_i(a_i[3]),  .Y_i(b_mod_i[3]),  .C_i(c_i[2]),  .Sum_o(result_o[3]),  .C_o(c_i[3]));
  full_adder_32bit fa4  (.A_i(a_i[4]),  .Y_i(b_mod_i[4]),  .C_i(c_i[3]),  .Sum_o(result_o[4]),  .C_o(c_i[4]));
  full_adder_32bit fa5  (.A_i(a_i[5]),  .Y_i(b_mod_i[5]),  .C_i(c_i[4]),  .Sum_o(result_o[5]),  .C_o(c_i[5]));
  full_adder_32bit fa6  (.A_i(a_i[6]),  .Y_i(b_mod_i[6]),  .C_i(c_i[5]),  .Sum_o(result_o[6]),  .C_o(c_i[6]));
  full_adder_32bit fa7  (.A_i(a_i[7]),  .Y_i(b_mod_i[7]),  .C_i(c_i[6]),  .Sum_o(result_o[7]),  .C_o(c_i[7]));
  full_adder_32bit fa8  (.A_i(a_i[8]),  .Y_i(b_mod_i[8]),  .C_i(c_i[7]),  .Sum_o(result_o[8]),  .C_o(c_i[8]));
  full_adder_32bit fa9  (.A_i(a_i[9]),  .Y_i(b_mod_i[9]),  .C_i(c_i[8]),  .Sum_o(result_o[9]),  .C_o(c_i[9]));
  full_adder_32bit fa10 (.A_i(a_i[10]), .Y_i(b_mod_i[10]), .C_i(c_i[9]),  .Sum_o(result_o[10]), .C_o(c_i[10]));
  full_adder_32bit fa11 (.A_i(a_i[11]), .Y_i(b_mod_i[11]), .C_i(c_i[10]), .Sum_o(result_o[11]), .C_o(c_i[11]));
  full_adder_32bit fa12 (.A_i(a_i[12]), .Y_i(b_mod_i[12]), .C_i(c_i[11]), .Sum_o(result_o[12]), .C_o(c_i[12]));
  full_adder_32bit fa13 (.A_i(a_i[13]), .Y_i(b_mod_i[13]), .C_i(c_i[12]), .Sum_o(result_o[13]), .C_o(c_i[13]));
  full_adder_32bit fa14 (.A_i(a_i[14]), .Y_i(b_mod_i[14]), .C_i(c_i[13]), .Sum_o(result_o[14]), .C_o(c_i[14]));
  full_adder_32bit fa15 (.A_i(a_i[15]), .Y_i(b_mod_i[15]), .C_i(c_i[14]), .Sum_o(result_o[15]), .C_o(c_i[15]));
  full_adder_32bit fa16 (.A_i(a_i[16]), .Y_i(b_mod_i[16]), .C_i(c_i[15]), .Sum_o(result_o[16]), .C_o(c_i[16]));
  full_adder_32bit fa17 (.A_i(a_i[17]), .Y_i(b_mod_i[17]), .C_i(c_i[16]), .Sum_o(result_o[17]), .C_o(c_i[17]));
  full_adder_32bit fa18 (.A_i(a_i[18]), .Y_i(b_mod_i[18]), .C_i(c_i[17]), .Sum_o(result_o[18]), .C_o(c_i[18]));
  full_adder_32bit fa19 (.A_i(a_i[19]), .Y_i(b_mod_i[19]), .C_i(c_i[18]), .Sum_o(result_o[19]), .C_o(c_i[19]));
  full_adder_32bit fa20 (.A_i(a_i[20]), .Y_i(b_mod_i[20]), .C_i(c_i[19]), .Sum_o(result_o[20]), .C_o(c_i[20]));
  full_adder_32bit fa21 (.A_i(a_i[21]), .Y_i(b_mod_i[21]), .C_i(c_i[20]), .Sum_o(result_o[21]), .C_o(c_i[21]));
  full_adder_32bit fa22 (.A_i(a_i[22]), .Y_i(b_mod_i[22]), .C_i(c_i[21]), .Sum_o(result_o[22]), .C_o(c_i[22]));
  full_adder_32bit fa23 (.A_i(a_i[23]), .Y_i(b_mod_i[23]), .C_i(c_i[22]), .Sum_o(result_o[23]), .C_o(c_i[23]));
  full_adder_32bit fa24 (.A_i(a_i[24]), .Y_i(b_mod_i[24]), .C_i(c_i[23]), .Sum_o(result_o[24]), .C_o(c_i[24]));
  full_adder_32bit fa25 (.A_i(a_i[25]), .Y_i(b_mod_i[25]), .C_i(c_i[24]), .Sum_o(result_o[25]), .C_o(c_i[25]));
  full_adder_32bit fa26 (.A_i(a_i[26]), .Y_i(b_mod_i[26]), .C_i(c_i[25]), .Sum_o(result_o[26]), .C_o(c_i[26]));
  full_adder_32bit fa27 (.A_i(a_i[27]), .Y_i(b_mod_i[27]), .C_i(c_i[26]), .Sum_o(result_o[27]), .C_o(c_i[27]));
  full_adder_32bit fa28 (.A_i(a_i[28]), .Y_i(b_mod_i[28]), .C_i(c_i[27]), .Sum_o(result_o[28]), .C_o(c_i[28]));
  full_adder_32bit fa29 (.A_i(a_i[29]), .Y_i(b_mod_i[29]), .C_i(c_i[28]), .Sum_o(result_o[29]), .C_o(c_i[29]));
  full_adder_32bit fa30 (.A_i(a_i[30]), .Y_i(b_mod_i[30]), .C_i(c_i[29]), .Sum_o(result_o[30]), .C_o(c_i[30]));
  full_adder_32bit fa31 (.A_i(a_i[31]), .Y_i(b_mod_i[31]), .C_i(c_i[30]), .Sum_o(result_o[31]), .C_o(cout_o));
endmodule

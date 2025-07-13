module brcomp
(
  input [31:0] rs1_i, rs2_i, 
  input br_unsign, cout_o, // 1 if unsign, 0 if sign
  output reg br_less, br_equal
);
  wire [31:0]  b_mod, result_o;
  wire [30:0] c;
  wire cin_i;
  reg [31:0] temp;
  assign cin_i = 1'b1;
  assign b_mod = rs2_i ^ cin_i; 
    full_adder_32bit fa320 (
        .A(rs1_i[0]),
        .B(b_mod[0]),
        .cin(cin_i),
        .sum(result_o[0]),
        .cout(c[0])
    );
    // FA[1] đến FA[30]
    full_adder_32bit fa321 (
        .A(rs1_i[1]),
        .B(b_mod[1]),
        .cin(c[0]),
        .sum(result_o[1]),
        .cout(c[1])
    );
    full_adder_32bit fa322 (
        .A(rs1_i[2]),
        .B(b_mod[2]),
        .cin(c[1]),
        .sum(result_o[2]),
        .cout(c[2])
    );
    full_adder_32bit fa323 (
        .A(rs1_i[3]),
        .B(b_mod[3]),
        .cin(c[2]),
        .sum(result_o[3]),
        .cout(c[3])
    );
    full_adder_32bit fa324 (
        .A(rs1_i[4]),
        .B(b_mod[4]),
        .cin(c[3]),
        .sum(result_o[4]),
        .cout(c[4])
    );
    full_adder_32bit fa325 (
        .A(rs1_i[5]),
        .B(b_mod[5]),
        .cin(c[4]),
        .sum(result_o[5]),
        .cout(c[5])
    );
    full_adder_32bit fa326 (
        .A(rs1_i[6]),
        .B(b_mod[6]),
        .cin(c[5]),
        .sum(result_o[6]),
        .cout(c[6])
    );
    full_adder_32bit fa327 (
        .A(rs1_i[7]),
        .B(b_mod[7]),
        .cin(c[6]),
        .sum(result_o[7]),
        .cout(c[7])
    );
    full_adder_32bit fa328 (
        .A(rs1_i[8]),
        .B(b_mod[8]),
        .cin(c[7]),
        .sum(result_o[8]),
        .cout(c[8])
    );
    full_adder_32bit fa329 (
        .A(rs1_i[9]),
        .B(b_mod[9]),
        .cin(c[8]),
        .sum(result_o[9]),
        .cout(c[9])
    );
    full_adder_32bit fa3210 (
        .A(rs1_i[10]),
        .B(b_mod[10]),
        .cin(c[9]),
        .sum(result_o[10]),
        .cout(c[10])
    );
    full_adder_32bit fa3211 (
        .A(rs1_i[11]),
        .B(b_mod[11]),
        .cin(c[10]),
        .sum(result_o[11]),
        .cout(c[11])
    );
    full_adder_32bit fa3212 (
        .A(rs1_i[12]),
        .B(b_mod[12]),
        .cin(c[11]),
        .sum(result_o[12]),
        .cout(c[12])
    );
    full_adder_32bit fa3213 (
        .A(rs1_i[13]),
        .B(b_mod[13]),
        .cin(c[12]),
        .sum(result_o[13]),
        .cout(c[13])
    );
    full_adder_32bit fa3214 (
        .A(rs1_i[14]),
        .B(b_mod[14]),
        .cin(c[13]),
        .sum(result_o[14]),
        .cout(c[14])
    );
    full_adder_32bit fa3215 (
        .A(rs1_i[15]),
        .B(b_mod[15]),
        .cin(c[14]),
        .sum(result_o[15]),
        .cout(c[15])
    );
    full_adder_32bit fa3216 (
        .A(rs1_i[16]),
        .B(b_mod[16]),
        .cin(c[15]),
        .sum(result_o[16]),
        .cout(c[16])
    );
    full_adder_32bit fa3217 (
        .A(rs1_i[17]),
        .B(b_mod[17]),
        .cin(c[16]),
        .sum(result_o[17]),
        .cout(c[17])
    );
    full_adder_32bit fa3218 (
        .A(rs1_i[18]),
        .B(b_mod[18]),
        .cin(c[17]),
        .sum(result_o[18]),
        .cout(c[18])
    );
    full_adder_32bit fa3219 (
        .A(rs1_i[19]),
        .B(b_mod[19]),
        .cin(c[18]),
        .sum(result_o[19]),
        .cout(c[19])
    );
    full_adder_32bit fa3220 (
        .A(rs1_i[20]),
        .B(b_mod[20]),
        .cin(c[19]),
        .sum(result_o[20]),
        .cout(c[20])
    );
    full_adder_32bit fa3221 (
        .A(rs1_i[21]),
        .B(b_mod[21]),
        .cin(c[20]),
        .sum(result_o[21]),
        .cout(c[21])
    );
    full_adder_32bit fa3222 (
        .A(rs1_i[22]),
        .B(b_mod[22]),
        .cin(c[21]),
        .sum(result_o[22]),
        .cout(c[22])
    );
    full_adder_32bit fa3223 (
        .A(rs1_i[23]),
        .B(b_mod[23]),
        .cin(c[22]),
        .sum(result_o[23]),
        .cout(c[23])
    );
    full_adder_32bit fa3224 (
        .A(rs1_i[24]),
        .B(b_mod[24]),
        .cin(c[23]),
        .sum(result_o[24]),
        .cout(c[24])
    );
    full_adder_32bit fa3225 (
        .A(rs1_i[25]),
        .B(b_mod[25]),
        .cin(c[24]),
        .sum(result_o[25]),
        .cout(c[25])
    );
    full_adder_32bit fa3226 (
        .A(rs1_i[26]),
        .B(b_mod[26]),
        .cin(c[25]),
        .sum(result_o[26]),
        .cout(c[26])
    );
    full_adder_32bit fa3227 (
        .A(rs1_i[27]),
        .B(b_mod[27]),
        .cin(c[26]),
        .sum(result_o[27]),
        .cout(c[27])
    );
    full_adder_32bit fa3228 (
        .A(rs1_i[28]),
        .B(b_mod[28]),
        .cin(c[27]),
        .sum(result_o[28]),
        .cout(c[28])
    );
    full_adder_32bit fa3229 (
        .A(rs1_i[29]),
        .B(b_mod[29]),
        .cin(c[28]),
        .sum(result_o[29]),
        .cout(c[29])
    );
    full_adder_32bit fa3230 (
        .A(rs1_i[30]),
        .B(b_mod[30]),
        .cin(c[29]),
        .sum(result_o[30]),
        .cout(c[30])
    );
  full_adder_32bit fa3231 (
    .A(rs1_i[31]),
    .B(b_mod[31]),
    .cin(c[30]),
    .sum(result_o[31]),
    .cout(cout_o)
  );
  assign br_less = cout_o ^ 0;
  always_comb begin
    for(int i = 0; i < 32; i++) begin
      temp[i] = result_o[i] ^ 0;
  end
  br_equal = ~&temp;
 end
endmodule   
    

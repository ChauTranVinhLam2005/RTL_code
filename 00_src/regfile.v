module regfile (
    input      [4:0]  rs1_addr_i,
    input      [4:0]  rs2_addr_i,
    input      [4:0]  rd_addr_i,
    input wire [31:0] rd_data_i,
    input             rd_wren_i,
    input             clk_i,
    output     [31:0] rs1_data_o,
    output     [31:0] rs2_data_o
);
  wire          rst_n;
  wire   [31:0] q_o;
  wire   [31:0] data_o;
  reg    [31:0] enb;
  integer       i;

  assign q_o[0] = 32'b0; // Register 0 is hardwired to 0

  decoder_5to32 d1 (.a_i(rd_addr_i), .out_o(data_o));

  always @(posedge clk_i) begin
    for(i = 0; i < 32; i = i + 1) begin
        enb[i] = {32{rd_wren_i}} & data_o[i];//co the loi o day vi da su dung ngo ra instance cua decoder
    end
  end
  register_32bit r0  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[0]),  .d_i(32'b0),     .q_o(q_o[0]));
  register_32bit r1  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[1]),  .d_i(rd_data_i), .q_o(q_o[1]));
  register_32bit r2  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[2]),  .d_i(rd_data_i), .q_o(q_o[2]));
  register_32bit r3  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[3]),  .d_i(rd_data_i), .q_o(q_o[3]));
  register_32bit r4  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[4]),  .d_i(rd_data_i), .q_o(q_o[4]));
  register_32bit r5  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[5]),  .d_i(rd_data_i), .q_o(q_o[5]));
  register_32bit r6  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[6]),  .d_i(rd_data_i), .q_o(q_o[6]));
  register_32bit r7  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[7]),  .d_i(rd_data_i), .q_o(q_o[7]));
  register_32bit r8  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[8]),  .d_i(rd_data_i), .q_o(q_o[8]));
  register_32bit r9  ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[9]),  .d_i(rd_data_i), .q_o(q_o[9]));
  register_32bit r10 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[10]), .d_i(rd_data_i), .q_o(q_o[10]));
  register_32bit r11 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[11]), .d_i(rd_data_i), .q_o(q_o[11]));
  register_32bit r12 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[12]), .d_i(rd_data_i), .q_o(q_o[12]));
  register_32bit r13 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[13]), .d_i(rd_data_i), .q_o(q_o[13]));
  register_32bit r14 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[14]), .d_i(rd_data_i), .q_o(q_o[14]));
  register_32bit r15 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[15]), .d_i(rd_data_i), .q_o(q_o[15]));
  register_32bit r16 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[16]), .d_i(rd_data_i), .q_o(q_o[16]));
  register_32bit r17 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[17]), .d_i(rd_data_i), .q_o(q_o[17]));
  register_32bit r18 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[18]), .d_i(rd_data_i), .q_o(q_o[18]));
  register_32bit r19 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[19]), .d_i(rd_data_i), .q_o(q_o[19]));
  register_32bit r20 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[20]), .d_i(rd_data_i), .q_o(q_o[20]));
  register_32bit r21 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[21]), .d_i(rd_data_i), .q_o(q_o[21]));
  register_32bit r22 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[22]), .d_i(rd_data_i), .q_o(q_o[22]));
  register_32bit r23 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[23]), .d_i(rd_data_i), .q_o(q_o[23]));
  register_32bit r24 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[24]), .d_i(rd_data_i), .q_o(q_o[24]));
  register_32bit r25 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[25]), .d_i(rd_data_i), .q_o(q_o[25]));
  register_32bit r26 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[26]), .d_i(rd_data_i), .q_o(q_o[26]));
  register_32bit r27 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[27]), .d_i(rd_data_i), .q_o(q_o[27]));
  register_32bit r28 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[28]), .d_i(rd_data_i), .q_o(q_o[28]));
  register_32bit r29 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[29]), .d_i(rd_data_i), .q_o(q_o[29]));
  register_32bit r30 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[30]), .d_i(rd_data_i), .q_o(q_o[30]));
  register_32bit r31 ( .clk_i(clk_i),  .nrst_i(rst_n), .en_i(enb[31]), .d_i(rd_data_i), .q_o(q_o[31]));

  mux_32to1 m1 ( .d0(q_o[0]),  .d1(q_o[1]),  .d2(q_o[2]),  .d3(q_o[3]),
                 .d4(q_o[4]),  .d5(q_o[5]),  .d6(q_o[6]),  .d7(q_o[7]),
                 .d8(q_o[8]),  .d9(q_o[9]),  .d10(q_o[10]),.d11(q_o[11]),
                 .d12(q_o[12]),.d13(q_o[13]),.d14(q_o[14]),.d15(q_o[15]),
                 .d16(q_o[16]),.d17(q_o[17]),.d18(q_o[18]),.d19(q_o[19]),
                 .d20(q_o[20]),.d21(q_o[21]),.d22(q_o[22]),.d23(q_o[23]),
                 .d24(q_o[24]),.d25(q_o[25]),.d26(q_o[26]),.d27(q_o[27]),
                 .d28(q_o[28]),.d29(q_o[29]),.d30(q_o[30]),.d31(q_o[31]),
                 .s(rs1_addr_i), .y_o(rs1_data_o)
                );
  mux_32to1 m2 ( .d0(q_o[0]),  .d1(q_o[1]),  .d2(q_o[2]),  .d3(q_o[3]),
                 .d4(q_o[4]),  .d5(q_o[5]),  .d6(q_o[6]),  .d7(q_o[7]),
                 .d8(q_o[8]),  .d9(q_o[9]),  .d10(q_o[10]),.d11(q_o[11]),
                 .d12(q_o[12]),.d13(q_o[13]),.d14(q_o[14]),.d15(q_o[15]),
                 .d16(q_o[16]),.d17(q_o[17]),.d18(q_o[18]),.d19(q_o[19]),
                 .d20(q_o[20]),.d21(q_o[21]),.d22(q_o[22]),.d23(q_o[23]),
                 .d24(q_o[24]),.d25(q_o[25]),.d26(q_o[26]),.d27(q_o[27]),
                 .d28(q_o[28]),.d29(q_o[29]),.d30(q_o[30]),.d31(q_o[31]),
                 .s(rs2_addr_i), .y_o(rs2_data_o)
                 );
endmodule

module add_subtract_tb;

  reg  [31:0] a;
  reg  [31:0] b;
  reg         cin;
  wire [31:0] result;
  wire        cout;

  reg  [31:0] a_tc      [16:0];
  reg  [31:0] b_tc      [16:0];
  reg         cin_tc    [16:0];
  reg  [31:0] result_tc [16:0];
  reg         cout_tc   [16:0];
  integer i;
  
  // Instantiate DUT
  add_subtract uut (
    .a_i      (a),
    .b_i      (b),
    .cin_i    (cin),
    .result_o (result),
    .cout_o   (cout)
    );
    wire [31:0] b_mod_i;

  assign b_mod_i = b ^ {32{cin}}; // nếu b_i là [3:0] và cin_i là 1 bit
  initial begin
    // Testcase 1 + 1 = 2, cout = 0
    a_tc[0] = 32'h00000001; b_tc[0] = 32'h00000001; cin_tc[0] = 1'b0; result_tc[0] = 32'h00000002; cout_tc[0] = 1'b0;
    // Testcase 12345 + 6789 = 19134
    a_tc[1] = 32'h00003039; b_tc[1] = 32'h00001A85; cin_tc[1] = 1'b0; result_tc[1] = 32'h00004ABE; cout_tc[1] = 1'b0;
    // Testcase FFFFFFFF + 1 = 0, cout = 1
    a_tc[2] = 32'hFFFFFFFF; b_tc[2] = 32'h00000001; cin_tc[2] = 1'b0; result_tc[2] = 32'h00000000; cout_tc[2] = 1'b1;
    // Testcase 10 - 9 = 1
    a_tc[3] = 32'h0000000A; b_tc[3] = 32'h00000009; cin_tc[3] = 1'b1; result_tc[3] = 32'h00000001; cout_tc[3] = 1'b0;
    // Testcase 192837 - 987654 = FFF3DF3F, cout = 1
    a_tc[4] = 32'h0002F145; b_tc[4] = 32'h000F1206; cin_tc[4] = 1'b1; result_tc[4] = 32'hFFF3DF3F; cout_tc[4] = 1'b1;
    // Testcase 1 - 1 = 0
    a_tc[5] = 32'h00000001; b_tc[5] = 32'h00000001; cin_tc[5] = 1'b1; result_tc[5] = 32'h00000000; cout_tc[5] = 1'b0;
    // Testcase failed case (expected to fail cout)
    a_tc[6] = 32'h00000001; b_tc[6] = 32'h00000001; cin_tc[6] = 1'b1; result_tc[6] = 32'h00000000; cout_tc[6] = 1'b0;
    // Testcase 0 + 0 = 0, cout = 0
    a_tc[7] = 32'h00000000; b_tc[7] = 32'h00000000; cin_tc[7] = 1'b0; result_tc[7] = 32'h00000000; cout_tc[7] = 1'b0;
    // Testcase FFFFFFFF + FFFFFFFF + 1 = FFFFFFFF, cout = 1
    a_tc[8] = 32'hFFFFFFFF; b_tc[8] = 32'hFFFFFFFF; cin_tc[8] = 1'b1; result_tc[8] = 32'hFFFFFFFF; cout_tc[8] = 1'b1;
    // Testcase 80000000 + 80000000 = 00000000, cout = 1 (overflow if signed)
    a_tc[9]  = 32'h80000000; b_tc[9] = 32'h80000000; cin_tc[9] = 1'b0; result_tc[9] = 32'h00000000; cout_tc[9] = 1'b1;
    // Testcase 0 - 1 = FFFFFFFF, cout = 1 (borrow occurred, viewed unsigned)
    a_tc[10] = 32'h00000000; b_tc[10] = 32'h00000000; cin_tc[10] = 1'b1; result_tc[10] = 32'h00000000; cout_tc[10] = 1'b0;
    // Testcase 7FFFFFFF + 1 = 80000000, cout = 0 (overflow if signed)
    a_tc[11] = 32'hFFFFFFFF; b_tc[11] = 32'h00000001; cin_tc[11] = 1'b1; result_tc[11] = 32'hFFFFFFFE; cout_tc[11] = 1'b0;
    // Testcase 0xABCDEF01 + 0x12345678 = 0xBE024579, cout = 0
    a_tc[12] = 32'hABCDEF01; b_tc[12] = 32'h12345678; cin_tc[12] = 1'b0; result_tc[12] = 32'hBE024579; cout_tc[12] = 1'b0;
    // Testcase 0xFFFFFFFF - 0xFFFFFFFF = 0x00000000, cout = 0
    a_tc[13] = 32'hFFFFFFFF; b_tc[13] = 32'hFFFFFFFF; cin_tc[13] = 1'b1; result_tc[13] = 32'h00000000; cout_tc[13] = 1'b0;
    // Testcase 1 - 2 = FFFFFFFF, cout = 
    a_tc[14] = 32'h00000001; b_tc[14] = 32'h00000002; cin_tc[14] = 1'b1; result_tc[14] = 32'hFFFFFFFF; cout_tc[14] = 1'b1;
    // Testcase 0x7FFFFFFE + 1 = 0x7FFFFFFF, cout = 0
    a_tc[15] = 32'h7FFFFFFE; b_tc[15] = 32'h00000001; cin_tc[15] = 1'b0; result_tc[15] = 32'h7FFFFFFF; cout_tc[15] = 1'b0;

    for (i = 0; i < 16; i = i + 1) begin
      a   = a_tc[i];
      b   = b_tc[i];
      cin = cin_tc[i];
      #10; // wait for propagation

      if ((result !== result_tc[i]) || (cout !== cout_tc[i])) begin
        $display("---------------------------------------------------------------------------------------------------------------------------------");
        $display("Testcase #%2d FAILED: | a = %h | b = %h | cin = %b | result_expected = %h | result_got = %h | cout_expected = %b | cout_got = %b, b_mod = %h", i + 1, a, b, cin, result_tc[i], result, cout_tc[i], cout,b_mod_i);
      end else begin
        $display("--------------------------------------------------------------------------------------------------------------------------------");

        $display("Testcase #%2d PASSED: | a = %h | b = %h | cin = %b | result_expected = %h | result_got = %h | cout_expected = %b | cout_got = %b, b_mod = %h", i + 1, a, b, cin, result_tc[i], result, cout_tc[i], cout,b_mod_i);
      end
    end

    $finish;
  end

endmodule

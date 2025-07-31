module add_subtract2bit_tb;

  reg  [1:0] a;
  reg  [1:0] b;
  reg         cin;
  wire [1:0] result;
  wire        cout;

  reg  [1:0] a_tc      [0:13];
  reg  [1:0] b_tc      [0:13];
  reg        cin_tc    [0:13];
  reg  [1:0] result_tc [0:13];
  reg        cout_tc   [0:13];
  integer i;
  
  // Instantiate DUT
  add_subtract2bit uut (
    .a_i      (a),
    .b_i      (b),
    .cin_i    (cin),
    .result_o (result),
    .cout_o   (cout)
    );
    wire [3:0] b_mod_i;

  assign b_mod_i = b ^ {32{cin}}; // nếu b_i là [3:0] và cin_i là 1 bit
  initial begin
    // Testcase 0 + 0 = 0, cout = 0
    a_tc[0] = 2'b00; b_tc[0] = 2'b00; cin_tc[0] = 1'b0; result_tc[0] = 2'b00; cout_tc[0] = 1'b0;
    // Testcase 1 + 1 = 2, cout = 0
    a_tc[1] = 2'b01; b_tc[1] = 2'b01; cin_tc[1] = 1'b0; result_tc[1] = 2'b10; cout_tc[1] = 1'b0;
    // Testcase 2 + 2 = 4, cout = 1
    a_tc[2] = 2'b10; b_tc[2] = 2'b10; cin_tc[2] = 1'b0; result_tc[2] = 2'b00; cout_tc[2] = 1'b1;
    // Testcase 3 + 3 = 6, cout = 1
    a_tc[3] = 2'b11; b_tc[3] = 2'b11; cin_tc[3] = 1'b0; result_tc[3] = 2'b10; cout_tc[3] = 1'b1;
    // Testcase 3 - 3  = 0, cout = 0
    a_tc[4] = 2'b11; b_tc[4] = 2'b11; cin_tc[4] = 1'b1; result_tc[4] = 2'b00; cout_tc[4] = 1'b0;
    // Testcase 2 - 1  = 1, cout = 0
    a_tc[5] = 2'b10; b_tc[5] = 2'b01; cin_tc[5] = 1'b1; result_tc[5] = 2'b01; cout_tc[5] = 1'b0;
    // Testcase 1 - 2 = 1 (underflow), cout = 1
    a_tc[6] = 2'b01; b_tc[6] = 2'b10; cin_tc[6] = 1'b1; result_tc[6] = 2'b01; cout_tc[6] = 1'b1;
    // Testcase 3 - 3 = 0, cout = 0
    a_tc[7] = 2'b11; b_tc[7] = 2'b11; cin_tc[7] = 1'b1; result_tc[7] = 2'b00; cout_tc[7] = 1'b0;
    // Testcase 1 - 1 = 0
    a_tc[8] = 2'b01; b_tc[8] = 2'b01; cin_tc[8] = 1'b1; result_tc[8] = 2'b00; cout_tc[8] = 1'b0;
    // Testcase 0 - 0 = 0
    a_tc[9] = 2'b00; b_tc[9] = 2'b00; cin_tc[9] = 1'b1; result_tc[9] = 2'b00; cout_tc[9] = 1'b0;
    // Testcase 3 + 0 = 3, cout = 0
    a_tc[10] = 2'b11; b_tc[10] = 2'b00; cin_tc[10] = 1'b0; result_tc[10] = 2'b11; cout_tc[10] = 1'b0;
    // Testcase 1 - 3 = 2, cout = 1 (underflow)
    a_tc[11] = 2'b01; b_tc[11] = 2'b11; cin_tc[11] = 1'b1; result_tc[11] = 2'b10; cout_tc[11] = 1'b1;
    // Testcase 1 + 2 = 3, cout = 0
    a_tc[12] = 2'b01; b_tc[12] = 2'b10; cin_tc[12] = 1'b0; result_tc[12] = 2'b11; cout_tc[12] = 1'b0;

    for (i = 0; i < 13; i = i + 1) begin
      a   = a_tc[i];
      b   = b_tc[i];
      cin = cin_tc[i];
      #10; // wait for propagation

      if ((result !== result_tc[i]) || (cout !== cout_tc[i])) begin
        $display("---------------------------------------------------------------------------------------------------------------------------------");
        $display("Testcase #%2d FAILED: | a = %b | b = %b | cin = %b | result_expected = %b | result_got = %b | cout_expected = %b | cout_got = %b, b_mod = %b", i + 1, a, b, cin, result_tc[i], result, cout_tc[i], cout,b_mod_i);
      end else begin
        $display("--------------------------------------------------------------------------------------------------------------------------------");

        $display("Testcase #%2d PASSED: | a = %b | b = %b | cin = %b | result_expected = %b | result_got = %b | cout_expected = %b | cout_got = %b, b_mod = %b", i + 1, a, b, cin, result_tc[i], result, cout_tc[i], cout,b_mod_i);
      end
    end

    $finish;
  end

endmodule

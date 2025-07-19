module add_subtract_tb;

  reg [31:0] a, b;
  reg        cin;
  wire [31:0] result;
  wire        cout;

  reg [31:0] a_tc [0:6];
  reg [31:0] b_tc [0:6];
  reg        cin_tc [0:6];
  reg [31:0] result_tc [0:6];
  reg        cout_tc [0:6];

  integer i;

  // Instantiate DUT
  add_subtract uut (
    .a_i(a),
    .b_i(b),
    .cin_i(cin),
    .result_o(result),
    .cout_o(cout)
  );

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
    a_tc[6] = 32'h00000001; b_tc[6] = 32'h00000001; cin_tc[6] = 1'b1; result_tc[6] = 32'h00000000; cout_tc[6] = 1'b1;

    for (i = 0; i < 7; i = i + 1) begin
      a   = a_tc[i];
      b   = b_tc[i];
      cin = cin_tc[i];
      #10; // wait for propagation

      if ((result !== result_tc[i]) || (cout !== cout_tc[i])) begin
        $display("Testcase #%0d FAILED:", i + 1);
        $display("  a = %h | b = %h | cin = %b", a, b, cin);
        $display("  Expected result = %h | Got = %h", result_tc[i], result);
        $display("  Expected cout   = %b | Got = %b", cout_tc[i], cout);
      end else begin
        $display("Testcase #%0d PASSED:", i + 1);
        $display("  a = %h | b = %h | cin = %b", a, b, cin);
        $display("  Result = %h | Cout = %b", result, cout);
      end
    end

    $finish;
  end

endmodule

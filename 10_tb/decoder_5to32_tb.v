module decoder_5to32_tb;

  // Testbench signals
  reg  [4:0] a;
  wire [31:0] out;
  // Expected outputs
  reg [4:0]  a_tc   [0:7];
  reg [31:0] out_tc [0:7];

  integer i;

  // Instantiate the DUT
  decoder_5to32 uut (
    .a_i  (a),
    .out_o(out)
  );

  initial begin
    // Define testcases
    a_tc[0] = 5'd0;   out_tc[0] = 32'h00000001;
    a_tc[1] = 5'd1;   out_tc[1] = 32'h00000002;
    a_tc[2] = 5'd2;   out_tc[2] = 32'h00000004;
    a_tc[3] = 5'd5;   out_tc[3] = 32'h00000020;
    a_tc[4] = 5'd10;  out_tc[4] = 32'h00000400;
    a_tc[5] = 5'd15;  out_tc[5] = 32'h00008000;
    a_tc[6] = 5'd20;  out_tc[6] = 32'h00100000;
    a_tc[7] = 5'd31;  out_tc[7] = 32'h80000000;

    // Run testcases
    for (i = 0; i < 8; i = i + 1) begin
      a = a_tc[i];
      #10; // wait for propagation

      if (out !== out_tc[i]) begin
        $display("-----------------------------------------------------------");
        $display("❌ Test %0d FAILED | a = %0d | Expected = %032b | Got = %032b",
                  i, a_tc[i], out_tc[i], out);
      end else begin
        $display("-----------------------------------------------------------");
        $display("✅ Test %0d PASSED | a = %0d | Output = %032b",
                  i, a_tc[i], out);
      end
    end

    $finish;
  end

endmodule

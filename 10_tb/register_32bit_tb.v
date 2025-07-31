module register_32bit_tb;

  reg         clk;
  reg         rst;
  reg         en;
  reg  [31:0] d_i;
  wire [31:0] q_o;

  reg [31:0] d_i_tc [0:7];
  reg [31:0] q_o_tc [0:7];
  reg        en_tc  [0:7];
  reg        rst_tc [0:7];

  integer i;

  // DUT instantiation
  register_32bit uut (
    .clk_i(clk),
    .nrst_i(rst),
    .en_i(en),
    .d_i(d_i),
    .q_o(q_o)
  );

  // Clock generation
  always #5 clk = ~clk;

  initial begin
    // Initialize
    clk = 0;
    d_i = 32'h00000000;
    en  = 0;
    rst = 1;

    // Define testcases
    // Format: {rst_tc, en_tc, d_i_tc, q_o_tc_expected}
    rst_tc[0] = 1; en_tc[0] = 0; d_i_tc[0] = 32'hDEADBEEF; q_o_tc[0] = 32'h00000000; // Reset active
    rst_tc[1] = 0; en_tc[1] = 1; d_i_tc[1] = 32'h00000011; q_o_tc[1] = 32'h00000011; // Normal write
    rst_tc[2] = 0; en_tc[2] = 1; d_i_tc[2] = 32'h12345678; q_o_tc[2] = 32'h12345678; // Another write
    rst_tc[3] = 0; en_tc[3] = 0; d_i_tc[3] = 32'hFFFFFFFF; q_o_tc[3] = 32'h12345678; // No write (en = 0)
    rst_tc[4] = 1; en_tc[4] = 1; d_i_tc[4] = 32'hAAAA5555; q_o_tc[4] = 32'h00000000; // Reset overrides write
    rst_tc[5] = 0; en_tc[5] = 1; d_i_tc[5] = 32'hCAFEBABE; q_o_tc[5] = 32'hCAFEBABE; // Write after reset
    rst_tc[6] = 0; en_tc[6] = 0; d_i_tc[6] = 32'hBADF00D1; q_o_tc[6] = 32'hCAFEBABE; // No write
    rst_tc[7] = 0; en_tc[7] = 1; d_i_tc[7] = 32'h0F0F0F0F; q_o_tc[7] = 32'h0F0F0F0F; // Final write

    // Run all testcases
    for (i = 0; i < 8; i = i + 1) begin
      rst = rst_tc[i];
      en  = en_tc[i];
      d_i = d_i_tc[i];
      @(posedge clk); // wait for rising edge

      #1; // allow time for q_o to settle

      if (q_o !== q_o_tc[i]) begin
        $display("-------------------------------------------------------------------------------------");
        $display("Testcase #%0d FAILED: rst = %b | en = %b | d_i = %h | q_expected = %h | q_got = %h",
                 i, rst, en, d_i, q_o_tc[i], q_o);
      end else begin
        $display("-------------------------------------------------------------------------------------");
        $display("Testcase #%0d PASSED: rst = %b | en = %b | d_i = %h | q_expected = %h | q_got = %h",
                 i, rst, en, d_i, q_o_tc[i], q_o);
      end
    end
    $finish;
  end

endmodule
